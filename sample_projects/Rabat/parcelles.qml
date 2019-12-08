<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" simplifyMaxScale="1" simplifyAlgorithm="0" version="3.4.4-Madeira" readOnly="0" simplifyDrawingTol="1" labelsEnabled="0" simplifyDrawingHints="1" simplifyLocal="1" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" minScale="1e+8">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" type="RuleRenderer" symbollevels="0" enableorderby="0">
    <rules key="{bd298d6b-5dde-44cd-9f24-b7de278baa15}">
      <rule symbol="0" scalemindenom="100" scalemaxdenom="100000" key="{409f98a4-1f63-47ef-a644-efe5a35cb551}"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" type="fill" force_rhr="0" alpha="1" name="0">
        <layer enabled="1" locked="0" class="SimpleLine" pass="0">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="35,35,35,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.26" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory width="15" minScaleDenominator="0" opacity="1" rotationOffset="270" backgroundAlpha="255" labelPlacementMethod="XHeight" diagramOrientation="Up" scaleDependency="Area" sizeScale="3x:0,0,0,0,0,0" enabled="0" lineSizeScale="3x:0,0,0,0,0,0" height="15" lineSizeType="MM" backgroundColor="#ffffff" sizeType="MM" maxScaleDenominator="1e+8" penAlpha="255" scaleBasedVisibility="0" penWidth="0" barWidth="5" penColor="#000000" minimumSize="0">
      <fontProperties style="" description="Sans,10,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="1" showAll="1" zIndex="0" priority="0" obstacle="0" dist="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="commune">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="prefixe">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="section">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="numero">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="contenance">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="created">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="updated">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="id"/>
    <alias index="1" name="" field="commune"/>
    <alias index="2" name="" field="prefixe"/>
    <alias index="3" name="" field="section"/>
    <alias index="4" name="" field="numero"/>
    <alias index="5" name="" field="contenance"/>
    <alias index="6" name="" field="created"/>
    <alias index="7" name="" field="updated"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="commune"/>
    <default expression="" applyOnUpdate="0" field="prefixe"/>
    <default expression="" applyOnUpdate="0" field="section"/>
    <default expression="" applyOnUpdate="0" field="numero"/>
    <default expression="" applyOnUpdate="0" field="contenance"/>
    <default expression="" applyOnUpdate="0" field="created"/>
    <default expression="" applyOnUpdate="0" field="updated"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" field="id" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" field="commune" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" field="prefixe" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" field="section" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" field="numero" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" field="contenance" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" field="created" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" field="updated" constraints="0" unique_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="commune" exp=""/>
    <constraint desc="" field="prefixe" exp=""/>
    <constraint desc="" field="section" exp=""/>
    <constraint desc="" field="numero" exp=""/>
    <constraint desc="" field="contenance" exp=""/>
    <constraint desc="" field="created" exp=""/>
    <constraint desc="" field="updated" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" width="-1" type="field" name="id"/>
      <column hidden="0" width="-1" type="field" name="commune"/>
      <column hidden="0" width="-1" type="field" name="prefixe"/>
      <column hidden="0" width="-1" type="field" name="section"/>
      <column hidden="0" width="-1" type="field" name="numero"/>
      <column hidden="0" width="-1" type="field" name="contenance"/>
      <column hidden="0" width="-1" type="field" name="created"/>
      <column hidden="0" width="-1" type="field" name="updated"/>
      <column hidden="1" width="-1" type="actions"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ "Fonction d'initialisation Python".
Voici un exemple à suivre:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")

]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="commune"/>
    <field editable="1" name="contenance"/>
    <field editable="1" name="created"/>
    <field editable="1" name="id"/>
    <field editable="1" name="numero"/>
    <field editable="1" name="prefixe"/>
    <field editable="1" name="section"/>
    <field editable="1" name="updated"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="commune"/>
    <field labelOnTop="0" name="contenance"/>
    <field labelOnTop="0" name="created"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="numero"/>
    <field labelOnTop="0" name="prefixe"/>
    <field labelOnTop="0" name="section"/>
    <field labelOnTop="0" name="updated"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
