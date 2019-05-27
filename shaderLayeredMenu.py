from Katana import NodegraphAPI, LayeredMenuAPI, RenderingAPI
from RenderingAPI import RenderPlugins

def PopulateCallback(layeredMenu):
    renderer = RenderingAPI.RenderPlugins.GetDefaultRendererPluginName()
    rendererInfo = RenderPlugins.GetInfoPlugin(renderer)
    shaderType = RenderingAPI.RendererInfo.kRendererObjectTypeShader
    shaderNames = rendererInfo.getRendererObjectNames(shaderType)

    for shaderName in shaderNames:
        if 'light' in shaderName:
            color = (0.8, 0.7, 0.2)
        else:
            color = (0.6, 0.0, 0.0)

        layeredMenu.addEntry(shaderName, text=shaderName, color=color)

def ActionCallback(value):
    renderer = RenderingAPI.RenderPlugins.GetDefaultRendererPluginName()

    if renderer == 'arnold':
        node = NodegraphAPI.CreateNode('ArnoldShadingNode')
        node.getParameter('nodeType').setValue(value, 0)
        node.setName(value)
        node.getParameter('name').setValue(node.getName(), 0)
        node.checkDynamicParameters()
        return node

layeredMenu = LayeredMenuAPI.LayeredMenu(PopulateCallback, ActionCallback, 'S', alwaysPopulate=False, onlyMatchWordStart=False)
LayeredMenuAPI.RegisterLayeredMenu(layeredMenu, 'getShadingNodes')
