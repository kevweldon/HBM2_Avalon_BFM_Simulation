<?xml version="1.0" ?>
<!--Your use of Intel Corporation's design tools, logic functions 
and other software and tools, and any partner logic 
functions, and any output files from any of the foregoing 
(including device programming or simulation files), and any 
associated documentation or information are expressly subject 
to the terms and conditions of the Intel Program License 
Subscription Agreement, the Intel Quartus Prime License Agreement,
the Intel FPGA IP License Agreement, or other applicable license
agreement, including, without limitation, that your use is for
the sole purpose of programming logic devices manufactured by
Intel and sold by Intel or its authorized distributors.  Please
refer to the applicable agreement for further details, at
https://fpgasoftware.intel.com/eula.-->
<ipxact:component xmlns:altera="http://www.altera.com/XMLSchema/IPXact2014/extensions" xmlns:ipxact="http://www.accellera.org/XMLSchema/IPXACT/1685-2014">
  <ipxact:vendor>Intel Corporation</ipxact:vendor>
  <ipxact:library>ed_synth_reset_release_ip</ipxact:library>
  <ipxact:name>reset_release_ip</ipxact:name>
  <ipxact:version>19.4.1</ipxact:version>
  <ipxact:busInterfaces>
    <ipxact:busInterface>
      <ipxact:name>ninit_done</ipxact:name>
      <ipxact:busType vendor="intel" library="intel" name="conduit" version="22.4"></ipxact:busType>
      <ipxact:abstractionTypes>
        <ipxact:abstractionType>
          <ipxact:abstractionRef vendor="intel" library="intel" name="conduit" version="22.4"></ipxact:abstractionRef>
          <ipxact:portMaps>
            <ipxact:portMap>
              <ipxact:logicalPort>
                <ipxact:name>ninit_done</ipxact:name>
              </ipxact:logicalPort>
              <ipxact:physicalPort>
                <ipxact:name>ninit_done</ipxact:name>
              </ipxact:physicalPort>
            </ipxact:portMap>
          </ipxact:portMaps>
        </ipxact:abstractionType>
      </ipxact:abstractionTypes>
      <ipxact:slave></ipxact:slave>
      <ipxact:parameters>
        <ipxact:parameter parameterId="associatedClock" type="string">
          <ipxact:name>associatedClock</ipxact:name>
          <ipxact:displayName>associatedClock</ipxact:displayName>
          <ipxact:value></ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="associatedReset" type="string">
          <ipxact:name>associatedReset</ipxact:name>
          <ipxact:displayName>associatedReset</ipxact:displayName>
          <ipxact:value></ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="prSafe" type="bit">
          <ipxact:name>prSafe</ipxact:name>
          <ipxact:displayName>Partial Reconfiguration Safe</ipxact:displayName>
          <ipxact:value>false</ipxact:value>
        </ipxact:parameter>
      </ipxact:parameters>
    </ipxact:busInterface>
  </ipxact:busInterfaces>
  <ipxact:model>
    <ipxact:views>
      <ipxact:view>
        <ipxact:name>QUARTUS_SYNTH</ipxact:name>
        <ipxact:envIdentifier>:quartus.altera.com:</ipxact:envIdentifier>
        <ipxact:componentInstantiationRef>QUARTUS_SYNTH</ipxact:componentInstantiationRef>
      </ipxact:view>
    </ipxact:views>
    <ipxact:instantiations>
      <ipxact:componentInstantiation>
        <ipxact:name>QUARTUS_SYNTH</ipxact:name>
        <ipxact:moduleName>altera_s10_user_rst_clkgate</ipxact:moduleName>
        <ipxact:fileSetRef>
          <ipxact:localName>QUARTUS_SYNTH</ipxact:localName>
        </ipxact:fileSetRef>
      </ipxact:componentInstantiation>
    </ipxact:instantiations>
    <ipxact:ports>
      <ipxact:port>
        <ipxact:name>ninit_done</ipxact:name>
        <ipxact:wire>
          <ipxact:direction>out</ipxact:direction>
          <ipxact:wireTypeDefs>
            <ipxact:wireTypeDef>
              <ipxact:typeName>STD_LOGIC</ipxact:typeName>
              <ipxact:viewRef>QUARTUS_SYNTH</ipxact:viewRef>
            </ipxact:wireTypeDef>
          </ipxact:wireTypeDefs>
        </ipxact:wire>
      </ipxact:port>
    </ipxact:ports>
  </ipxact:model>
  <ipxact:vendorExtensions>
    <altera:entity_info>
      <ipxact:vendor>Intel Corporation</ipxact:vendor>
      <ipxact:library>ed_synth_reset_release_ip</ipxact:library>
      <ipxact:name>altera_s10_user_rst_clkgate</ipxact:name>
      <ipxact:version>19.4.1</ipxact:version>
    </altera:entity_info>
    <altera:altera_module_parameters>
      <ipxact:parameters>
        <ipxact:parameter parameterId="outputType" type="string">
          <ipxact:name>outputType</ipxact:name>
          <ipxact:displayName>Type of reset output port</ipxact:displayName>
          <ipxact:value>Conduit Interface</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="DEVICE_FAMILY" type="string">
          <ipxact:name>DEVICE_FAMILY</ipxact:name>
          <ipxact:displayName>Device family</ipxact:displayName>
          <ipxact:value>Stratix 10</ipxact:value>
        </ipxact:parameter>
      </ipxact:parameters>
    </altera:altera_module_parameters>
    <altera:altera_system_parameters>
      <ipxact:parameters>
        <ipxact:parameter parameterId="board" type="string">
          <ipxact:name>board</ipxact:name>
          <ipxact:displayName>Board</ipxact:displayName>
          <ipxact:value>default</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="device" type="string">
          <ipxact:name>device</ipxact:name>
          <ipxact:displayName>Device</ipxact:displayName>
          <ipxact:value>1SM21CHU2F53E2VG</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="deviceFamily" type="string">
          <ipxact:name>deviceFamily</ipxact:name>
          <ipxact:displayName>Device family</ipxact:displayName>
          <ipxact:value>Stratix 10</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="deviceSpeedGrade" type="string">
          <ipxact:name>deviceSpeedGrade</ipxact:name>
          <ipxact:displayName>Device Speed Grade</ipxact:displayName>
          <ipxact:value>2</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="generationId" type="int">
          <ipxact:name>generationId</ipxact:name>
          <ipxact:displayName>Generation Id</ipxact:displayName>
          <ipxact:value>0</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="bonusData" type="string">
          <ipxact:name>bonusData</ipxact:name>
          <ipxact:displayName>bonusData</ipxact:displayName>
          <ipxact:value>bonusData 
{
}
</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="hideFromIPCatalog" type="bit">
          <ipxact:name>hideFromIPCatalog</ipxact:name>
          <ipxact:displayName>Hide from IP Catalog</ipxact:displayName>
          <ipxact:value>false</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="lockedInterfaceDefinition" type="string">
          <ipxact:name>lockedInterfaceDefinition</ipxact:name>
          <ipxact:displayName>lockedInterfaceDefinition</ipxact:displayName>
          <ipxact:value>&lt;boundaryDefinition&gt;
    &lt;interfaces&gt;
        &lt;interface&gt;
            &lt;name&gt;ninit_done&lt;/name&gt;
            &lt;type&gt;conduit&lt;/type&gt;
            &lt;isStart&gt;false&lt;/isStart&gt;
            &lt;ports&gt;
                &lt;port&gt;
                    &lt;name&gt;ninit_done&lt;/name&gt;
                    &lt;role&gt;ninit_done&lt;/role&gt;
                    &lt;direction&gt;Output&lt;/direction&gt;
                    &lt;width&gt;1&lt;/width&gt;
                    &lt;lowerBound&gt;0&lt;/lowerBound&gt;
                    &lt;vhdlType&gt;STD_LOGIC&lt;/vhdlType&gt;
                    &lt;terminationValue&gt;0&lt;/terminationValue&gt;
                &lt;/port&gt;
            &lt;/ports&gt;
            &lt;assignments&gt;
                &lt;assignmentValueMap/&gt;
            &lt;/assignments&gt;
            &lt;parameters&gt;
                &lt;parameterValueMap&gt;
                    &lt;entry&gt;
                        &lt;key&gt;associatedClock&lt;/key&gt;
                    &lt;/entry&gt;
                    &lt;entry&gt;
                        &lt;key&gt;associatedReset&lt;/key&gt;
                    &lt;/entry&gt;
                    &lt;entry&gt;
                        &lt;key&gt;prSafe&lt;/key&gt;
                        &lt;value&gt;false&lt;/value&gt;
                    &lt;/entry&gt;
                &lt;/parameterValueMap&gt;
            &lt;/parameters&gt;
        &lt;/interface&gt;
    &lt;/interfaces&gt;
&lt;/boundaryDefinition&gt;</ipxact:value>
        </ipxact:parameter>
        <ipxact:parameter parameterId="systemInfos" type="string">
          <ipxact:name>systemInfos</ipxact:name>
          <ipxact:displayName>systemInfos</ipxact:displayName>
          <ipxact:value>&lt;systemInfosDefinition&gt;
    &lt;connPtSystemInfos/&gt;
&lt;/systemInfosDefinition&gt;</ipxact:value>
        </ipxact:parameter>
      </ipxact:parameters>
    </altera:altera_system_parameters>
    <altera:altera_interface_boundary>
      <altera:interface_mapping altera:name="ninit_done" altera:internal="reset_release_ip.ninit_done" altera:type="conduit" altera:dir="end">
        <altera:port_mapping altera:name="ninit_done" altera:internal="ninit_done"></altera:port_mapping>
      </altera:interface_mapping>
    </altera:altera_interface_boundary>
    <altera:altera_has_warnings>false</altera:altera_has_warnings>
    <altera:altera_has_errors>false</altera:altera_has_errors>
  </ipxact:vendorExtensions>
</ipxact:component>