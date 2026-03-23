<?xml version="1.0" encoding="UTF-8"?>
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.iec.ch/61850/2003/SCL SCL.xsd">
  <Header id="ExampleSubstationSCD_SpecificIEDs" version="1" revision="M"
    toolID="ManualEdit"
    nameStructure="IEDName">
    <Text>极简版SCD文件 用于教学 版权归属邹德虎个人所有</Text>
    <History>
      <Hitem version="1" revision="M" when="2025-04-17T00:00:00Z" who="zoudehu"
        what="Initial minimal version" />
    </History>
  </Header>

  <Substation name="SubA" desc="110kV示例变电站">
    <VoltageLevel name="VL1" desc="110kV">
      <Voltage unit="V" multiplier="k">110</Voltage>

      <Bay name="Busbar1" desc="母线I">
        <ConductingEquipment type="VTR" name="VT_B1" desc="母线I电压互感器">
          <Terminal name="T1" connectivityNode="SubA/VL1/Busbar1/CN_BB1" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar1" cNodeName="CN_BB1" />
        </ConductingEquipment>
        <ConductingEquipment type="EQU" name="BB1" desc="母线I">
          <Terminal name="T1" connectivityNode="SubA/VL1/Busbar1/CN_BB1" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar1" cNodeName="CN_BB1" />
        </ConductingEquipment>
        <ConnectivityNode name="CN_BB1" pathName="SubA/VL1/Busbar1/CN_BB1" />
      </Bay>

      <Bay name="Busbar2" desc="母线II">
        <ConductingEquipment type="VTR" name="VT_B2" desc="母线II电压互感器">
          <Terminal name="T1" connectivityNode="SubA/VL1/Busbar2/CN_BB2" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar2" cNodeName="CN_BB2" />
        </ConductingEquipment>
        <ConductingEquipment type="EQU" name="BB2" desc="母线II">
          <Terminal name="T1" connectivityNode="SubA/VL1/Busbar2/CN_BB2" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar2" cNodeName="CN_BB2" />
        </ConductingEquipment>
        <ConnectivityNode name="CN_BB2" pathName="SubA/VL1/Busbar2/CN_BB2" />
      </Bay>

      <Bay name="Line1" desc="进线1">
        <ConductingEquipment type="CBR" name="Q_A" desc="进线1断路器 (A)">
          <Terminal name="T1" connectivityNode="SubA/VL1/Line1/CN_L1_Internal" substationName="SubA"
            voltageLevelName="VL1" bayName="Line1" cNodeName="CN_L1_Internal" />
          <Terminal name="T2" connectivityNode="SubA/VL1/Busbar1/CN_BB1" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar1" cNodeName="CN_BB1" />
        </ConductingEquipment>
        <ConductingEquipment type="CTR" name="CT_A" desc="进线1电流互感器">
          <Terminal name="T1" connectivityNode="SubA/VL1/Line1/CN_L1_Internal" substationName="SubA"
            voltageLevelName="VL1" bayName="Line1" cNodeName="CN_L1_Internal" />
          <Terminal name="T2" connectivityNode="SubA/VL1/Line1/CN_L1_LineSide" substationName="SubA"
            voltageLevelName="VL1" bayName="Line1" cNodeName="CN_L1_LineSide" />
        </ConductingEquipment>
        <ConductingEquipment type="VTR" name="VT_A" desc="进线1电压互感器">
          <Terminal name="T1" connectivityNode="SubA/VL1/Line1/CN_L1_Internal" substationName="SubA"
            voltageLevelName="VL1" bayName="Line1" cNodeName="CN_L1_Internal" />
        </ConductingEquipment>
        <ConnectivityNode name="CN_L1_LineSide" pathName="SubA/VL1/Line1/CN_L1_LineSide" />
        <ConnectivityNode name="CN_L1_Internal" pathName="SubA/VL1/Line1/CN_L1_Internal" />
      </Bay>

      <Bay name="Line2" desc="进线2">
        <ConductingEquipment type="CBR" name="Q_B" desc="进线2断路器 (B)">
          <Terminal name="T1" connectivityNode="SubA/VL1/Line2/CN_L2_Internal" substationName="SubA"
            voltageLevelName="VL1" bayName="Line2" cNodeName="CN_L2_Internal" />
          <Terminal name="T2" connectivityNode="SubA/VL1/Busbar2/CN_BB2" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar2" cNodeName="CN_BB2" />
        </ConductingEquipment>
        <ConductingEquipment type="CTR" name="CT_B" desc="进线2电流互感器">
          <Terminal name="T1" connectivityNode="SubA/VL1/Line2/CN_L2_Internal" substationName="SubA"
            voltageLevelName="VL1" bayName="Line2" cNodeName="CN_L2_Internal" />
          <Terminal name="T2" connectivityNode="SubA/VL1/Line2/CN_L2_LineSide" substationName="SubA"
            voltageLevelName="VL1" bayName="Line2" cNodeName="CN_L2_LineSide" />
        </ConductingEquipment>
        <ConductingEquipment type="VTR" name="VT_B" desc="进线2电压互感器">
          <Terminal name="T1" connectivityNode="SubA/VL1/Line2/CN_L2_Internal" substationName="SubA"
            voltageLevelName="VL1" bayName="Line2" cNodeName="CN_L2_Internal" />
        </ConductingEquipment>
        <ConnectivityNode name="CN_L2_LineSide" pathName="SubA/VL1/Line2/CN_L2_LineSide" />
        <ConnectivityNode name="CN_L2_Internal" pathName="SubA/VL1/Line2/CN_L2_Internal" />
      </Bay>

      <Bay name="BusTie" desc="母线联络">
        <ConductingEquipment type="CBR" name="Q_C" desc="母联断路器 (C)">
          <Terminal name="T1" connectivityNode="SubA/VL1/Busbar1/CN_BB1" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar1" cNodeName="CN_BB1" />
          <Terminal name="T2" connectivityNode="SubA/VL1/Busbar2/CN_BB2" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar2" cNodeName="CN_BB2" />
        </ConductingEquipment>
      </Bay>

      <Bay name="Trafo1" desc="变压器1 (直连接母线I)">
        <ConductingEquipment type="EQU" name="T1" desc="变压器1">
          <Terminal name="T1" connectivityNode="SubA/VL1/Busbar1/CN_BB1" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar1" cNodeName="CN_BB1" />
          <Terminal name="T2" connectivityNode="SubA/VL1/Trafo1/CN_T1_LowSide" substationName="SubA"
            voltageLevelName="VL1" bayName="Trafo1" cNodeName="CN_T1_LowSide" />
        </ConductingEquipment>
        <ConnectivityNode name="CN_T1_LowSide" pathName="SubA/VL1/Trafo1/CN_T1_LowSide" />
      </Bay>

      <Bay name="Trafo2" desc="变压器2 (直连接母线II)">
        <ConductingEquipment type="EQU" name="T2" desc="变压器2">
          <Terminal name="T1" connectivityNode="SubA/VL1/Busbar2/CN_BB2" substationName="SubA"
            voltageLevelName="VL1" bayName="Busbar2" cNodeName="CN_BB2" />
          <Terminal name="T2" connectivityNode="SubA/VL1/Trafo2/CN_T2_LowSide" substationName="SubA"
            voltageLevelName="VL1" bayName="Trafo2" cNodeName="CN_T2_LowSide" />
        </ConductingEquipment>
        <ConnectivityNode name="CN_T2_LowSide" pathName="SubA/VL1/Trafo2/CN_T2_LowSide" />
      </Bay>
    </VoltageLevel>
  </Substation>

  <Communication>
    <SubNetwork name="StationBus_GOOSE_MMS" type="Ethernet" desc="站控层通信网络 (GOOSE/MMS)">
      <BitRate unit="b/s" multiplier="M">100</BitRate>

      <ConnectedAP iedName="IED_BKR" apName="AP1">
        <Address>
          <P type="IP">192.168.1.10</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-01-00-10</P>
          <P type="VLAN-ID">001</P>
          <P type="VLAN-PRIORITY">4</P>
          <P type="APPID">1010</P>
        </Address>
        <GSE ldInst="LD0" cbName="GCB_BKR_Commands">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-11</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">1010</P>
          </Address>
          <MinTime unit="s">0.01</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="IED_TRPROT1" apName="AP1">
        <Address>
          <P type="IP">192.168.1.20</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-01-00-20</P>
          <P type="VLAN-ID">001</P>
          <P type="VLAN-PRIORITY">4</P>
        </Address>
        <GSE ldInst="LD0" cbName="GCB_TRPROT1_Trip">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-21</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">1020</P>
          </Address>
          <MinTime unit="s">0.004</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
        <GSE ldInst="LD0" cbName="GCB_TRPROT1_Block">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-22</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">1021</P>
          </Address>
          <MinTime unit="s">0.01</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="IED_TRPROT2" apName="AP1">
        <Address>
          <P type="IP">192.168.1.30</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-01-00-30</P>
          <P type="VLAN-ID">001</P>
          <P type="VLAN-PRIORITY">4</P>
        </Address>
        <GSE ldInst="LD0" cbName="GCB_TRPROT2_Trip">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-31</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">1030</P>
          </Address>
          <MinTime unit="s">0.004</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
        <GSE ldInst="LD0" cbName="GCB_TRPROT2_Block">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-32</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">1031</P>
          </Address>
          <MinTime unit="s">0.01</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="IED_BCUA" apName="AP1">
        <Address>
          <P type="IP">192.168.1.161</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-01-00-A0</P>
          <P type="VLAN-ID">001</P>
          <P type="VLAN-PRIORITY">4</P>
        </Address>
        <GSE ldInst="LD0" cbName="GCB_BCUA_Status">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-A1</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">10A1</P>
          </Address>
          <MinTime unit="s">0.01</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="IED_BCUB" apName="AP1">
        <Address>
          <P type="IP">192.168.1.162</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-01-00-B0</P>
          <P type="VLAN-ID">001</P>
          <P type="VLAN-PRIORITY">4</P>
        </Address>
        <GSE ldInst="LD0" cbName="GCB_BCUB_Status">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-B1</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">10A2</P>
          </Address>
          <MinTime unit="s">0.01</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="IED_BCUC" apName="AP1">
        <Address>
          <P type="IP">192.168.1.169</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-01-00-C0</P>
          <P type="VLAN-ID">001</P>
          <P type="VLAN-PRIORITY">4</P>
        </Address>
        <GSE ldInst="LD0" cbName="GCB_BCUC_Status">
          <Address>
            <P type="MAC-Address">01-0C-CD-01-00-C1</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">10A9</P>
          </Address>
          <MinTime unit="s">0.01</MinTime>
          <MaxTime unit="s">1.0</MaxTime>
        </GSE>
      </ConnectedAP>

    </SubNetwork>

    <SubNetwork name="ProcessBus_SV" type="Ethernet" desc="过程层通信网络 (SV)">
      <BitRate unit="b/s" multiplier="M">100</BitRate>
      <ConnectedAP iedName="IED_MU1" apName="AP1">
        <Address>
          <P type="IP">192.168.1.40</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-04-00-10</P>
          <P type="VLAN-ID">002</P>
          <P type="VLAN-PRIORITY">4</P>
        </Address>
        <SMV ldInst="MU" cbName="SVCB_MU1_Samples">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-1A</P>
            <P type="VLAN-ID">002</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">4010</P>
          </Address>
        </SMV>
      </ConnectedAP>
      <ConnectedAP iedName="IED_MU2" apName="AP1">
        <Address>
          <P type="IP">192.168.1.50</P>
          <P type="IP-SUBNET">255.255.255.0</P>
          <P type="MAC-Address">01-0C-CD-04-00-20</P>
          <P type="VLAN-ID">002</P>
          <P type="VLAN-PRIORITY">4</P>
        </Address>
        <SMV ldInst="MU" cbName="SVCB_MU2_Samples">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-2A</P>
            <P type="VLAN-ID">002</P>
            <P type="VLAN-PRIORITY">4</P>
            <P type="APPID">4020</P>
          </Address>
        </SMV>
      </ConnectedAP>
    </SubNetwork>
  </Communication>

  <IED name="IED_BKR" type="GenericBKR" manufacturer="ExampleCorp"
    desc="备自投装置">
    <Services>
      <DynAssociation />
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="10" maxAttributes="50" />
      <ReadWrite />
      <ConfReportControl max="5" />
      <GetCBValues />
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GOOSE max="5" />
      <GSSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1" desc="Station Bus Interface">
      <Server>
        <Authentication />
        <LDevice inst="LD0" desc="逻辑设备0">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_BKR_Commands" desc="备自投操作命令状态 (发给BCU A/B/C)">
              <FCDA ldInst="LD0" prefix="" lnClass="CSWI" lnInst="1" doName="Pos" daName="stVal"
                fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="CSWI" lnInst="2" doName="Pos" daName="stVal"
                fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="CSWI" lnInst="3" doName="Pos" daName="stVal"
                fc="ST" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <GSEControl name="GCB_BKR_Commands" datSet="DS_BKR_Commands" appID="1010" confRev="5"
              type="GOOSE" desc="发送备自投命令给BCU" />
          </LN0>
          <LN lnClass="CSWI" inst="1" lnType="CSWI_Generic" desc="开关A控制命令输出逻辑 (源)">
            <DOI name="Pos" desc="开关A操作命令 (给DS_BKR_Commands)">
              <DAI name="stVal">
                <Val>off</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" inst="2" lnType="CSWI_Generic" desc="开关B控制命令输出逻辑 (源)">
            <DOI name="Pos" desc="开关B操作命令 (给DS_BKR_Commands)">
              <DAI name="stVal">
                <Val>off</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="CSWI" inst="3" lnType="CSWI_Generic" desc="开关C控制命令输出逻辑 (源)">
            <DOI name="Pos" desc="开关C操作命令 (给DS_BKR_Commands)">
              <DAI name="stVal">
                <Val>off</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnClass="GGIO" inst="1" lnType="GGIO_ProtInputs" desc="通用输入 (用于备自投逻辑)">
            <DOI name="Ind1" desc="接收断路器A位置 (来自BCUA)" />
            <DOI name="Ind2" desc="接收断路器B位置 (来自BCUB)" />
            <DOI name="Ind3" desc="接收断路器C位置 (来自BCUC)" />
            <DOI name="Ind4" desc="接收变压器1保护闭锁信号 (来自TRPROT1)" />
            <DOI name="Ind5" desc="接收变压器2保护闭锁信号 (来自TRPROT2)" />
            <DOI name="AnIn1" desc="接收母线1电压A相 (来自MU1)" />
            <DOI name="AnIn2" desc="接收母线1电压B相 (来自MU1)" />
            <DOI name="AnIn3" desc="接收母线1电压C相 (来自MU1)" />
            <DOI name="AnIn4" desc="接收母线2电压A相 (来自MU2)" />
            <DOI name="AnIn5" desc="接收母线2电压B相 (来自MU2)" />
            <DOI name="AnIn6" desc="接收母线2电压C相 (来自MU2)" />
            <Inputs desc="备自投/自切换输入信号订阅">
              <ExtRef iedName="IED_BCUA" ldInst="LD0" lnClass="XCBR" lnInst="1" doName="Pos"
                daName="stVal" intAddr="LD0/GGIO1.Ind1.stVal" />
              <ExtRef iedName="IED_BCUB" ldInst="LD0" lnClass="XCBR" lnInst="1" doName="Pos"
                daName="stVal" intAddr="LD0/GGIO1.Ind2.stVal" />
              <ExtRef iedName="IED_BCUC" ldInst="LD0" lnClass="XCBR" lnInst="1" doName="Pos"
                daName="stVal" intAddr="LD0/GGIO1.Ind3.stVal" />
              <ExtRef iedName="IED_TRPROT1" ldInst="LD0" lnClass="PTRC" lnInst="1" doName="Ind1"
                daName="stVal" intAddr="LD0/GGIO1.Ind4.stVal" />
              <ExtRef iedName="IED_TRPROT2" ldInst="LD0" lnClass="PTRC" lnInst="1" doName="Ind1"
                daName="stVal" intAddr="LD0/GGIO1.Ind5.stVal" />


              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsA" lnClass="TVTR" lnInst="1"
                doName="Vol" intAddr="LD0/GGIO1.AnIn1" />
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsB" lnClass="TVTR" lnInst="2"
                doName="Vol" intAddr="LD0/GGIO1.AnIn2" />
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsC" lnClass="TVTR" lnInst="3"
                doName="Vol" intAddr="LD0/GGIO1.AnIn3" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsA" lnClass="TVTR" lnInst="1"
                doName="Vol" intAddr="LD0/GGIO1.AnIn4" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsB" lnClass="TVTR" lnInst="2"
                doName="Vol" intAddr="LD0/GGIO1.AnIn5" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsC" lnClass="TVTR" lnInst="3"
                doName="Vol" intAddr="LD0/GGIO1.AnIn6" />
            </Inputs>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="IED_TRPROT1" type="GenericProt" manufacturer="ExampleCorp"
    desc="变压器1保护">
    <Services>
      <DynAssociation />
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="10" maxAttributes="50" />
      <ReadWrite />
      <ConfReportControl max="5" />
      <GetCBValues />
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GOOSE max="5" />
      <GSSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication />
        <LDevice inst="LD0">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_TRPROT1_Trip" desc="变压器1保护跳闸信号 (发给BCU A, C)">
              <FCDA ldInst="LD0" prefix="" lnClass="PTRC" lnInst="1" doName="SPCSO1" daName="stVal"
                fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="PTRC" lnInst="2" doName="SPCSO2" daName="stVal"
                fc="ST" />
            </DataSet>
            <DataSet name="DS_TRPROT1_Block" desc="变压器1保护闭锁备自投信号 (发给BKR)">
              <FCDA ldInst="LD0" prefix="" lnClass="PTRC" lnInst="1" doName="Ind1" daName="stVal"
                fc="ST" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <GSEControl name="GCB_TRPROT1_Trip" datSet="DS_TRPROT1_Trip" appID="1020" confRev="4"
              type="GOOSE" desc="发送T1跳闸信号给BCU A, C" />
            <GSEControl name="GCB_TRPROT1_Block" datSet="DS_TRPROT1_Block" appID="1021" confRev="4"
              type="GOOSE" desc="发送T1闭锁信号给BKR" />
          </LN0>
          <LN lnClass="PTOC" inst="1" lnType="PTOC_Generic" desc="保护逻辑元件">
          </LN>
          <LN lnClass="PTRC" inst="1" lnType="PTRC_TripBlock" desc="保护输入/输出 (跳闸/闭锁)">
            <DOI name="Ind1" desc="输出至备自投的闭锁信号">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
            <DOI name="SPCSO1" desc="跳线路断路器">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
          </LN>
          <LN lnClass="PTRC" inst="2" lnType="PTRC_TripBlock" desc="保护输入/输出 (跳闸/闭锁)2">
            <DOI name="SPCSO2" desc="跳母线断路器">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
          </LN>
          <LN lnClass="GGIO" inst="1" lnType="GGIO_ProtInputs" desc="通用输入">
            <DOI name="AnIn1" desc="接收母线I/线路1采样 (电压A相)" />
            <DOI name="AnIn2" desc="接收母线I/线路1采样 (电压B相)" />
            <DOI name="AnIn3" desc="接收母线I/线路1采样 (电压C相)" />
            <DOI name="AnIn4" desc="接收母线I/线路1采样 (电流A相)" />
            <DOI name="AnIn5" desc="接收母线I/线路1采样 (电流B相)" />
            <DOI name="AnIn6" desc="接收母线I/线路1采样 (电流C相)" />
            <DOI name="Ind2" desc="接收断路器A位置 (来自BCUA)" />
            <DOI name="Ind3" desc="接收断路器C位置 (来自BCUC)" />
            <Inputs desc="保护输入信号订阅">
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsA" lnClass="TVTR" lnInst="1"
                doName="Vol" intAddr="LD0/GGIO1.AnIn1" />
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsB" lnClass="TVTR" lnInst="2"
                doName="Vol" intAddr="LD0/GGIO1.AnIn2" />
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsC" lnClass="TVTR" lnInst="3"
                doName="Vol" intAddr="LD0/GGIO1.AnIn3" />
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsA" lnClass="TCTR" lnInst="1"
                doName="Amp" intAddr="LD0/GGIO1.AnIn4" />
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsB" lnClass="TCTR" lnInst="2"
                doName="Amp" intAddr="LD0/GGIO1.AnIn5" />
              <ExtRef iedName="IED_MU1" ldInst="MU" prefix="PhsC" lnClass="TCTR" lnInst="3"
                doName="Amp" intAddr="LD0/GGIO1.AnIn6" />
              <ExtRef iedName="IED_BCUA" ldInst="LD0" lnClass="XCBR" lnInst="1" doName="Pos"
                daName="stVal" intAddr="LD0/GGIO1.Ind2.stVal" />
              <ExtRef iedName="IED_BCUC" ldInst="LD0" lnClass="XCBR" lnInst="1" doName="Pos"
                daName="stVal" intAddr="LD0/GGIO1.Ind3.stVal" />
            </Inputs>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="IED_TRPROT2" type="GenericProt" manufacturer="ExampleCorp"
    desc="变压器2保护">
    <Services>
      <DynAssociation />
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="10" maxAttributes="50" />
      <ReadWrite />
      <ConfReportControl max="5" />
      <GetCBValues />
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GOOSE max="5" />
      <GSSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication />
        <LDevice inst="LD0">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_TRPROT2_Trip" desc="变压器2保护跳闸信号 (发给BCU B, C)">
              <FCDA ldInst="LD0" prefix="" lnClass="PTRC" lnInst="1" doName="SPCSO1" daName="stVal"
                fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="PTRC" lnInst="2" doName="SPCSO2" daName="stVal"
                fc="ST" />
            </DataSet>
            <DataSet name="DS_TRPROT2_Block" desc="变压器2保护闭锁备自投信号 (发给BKR)">
              <FCDA ldInst="LD0" prefix="" lnClass="PTRC" lnInst="1" doName="Ind1" daName="stVal"
                fc="ST" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <GSEControl name="GCB_TRPROT2_Trip" datSet="DS_TRPROT2_Trip" appID="1030" confRev="4"
              type="GOOSE" desc="发送T2跳闸信号给BCU B, C" />
            <GSEControl name="GCB_TRPROT2_Block" datSet="DS_TRPROT2_Block" appID="1031" confRev="4"
              type="GOOSE" desc="发送T2闭锁信号给BKR" />
          </LN0>
          <LN lnClass="PTOC" inst="1" lnType="PTRC_TripBlock" desc="保护逻辑元件" />
          <LN lnClass="PTRC" inst="1" lnType="PTRC_TripBlock" desc="保护跳闸逻辑 (源, 跳B, C)">
            <DOI name="Ind1" desc="输出至备自投的闭锁信号">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
            <DOI name="SPCSO1" desc="跳线路断路器">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
          </LN>
          <LN lnClass="PTRC" inst="2" lnType="PTRC_TripBlock" desc="保护输入/输出 (跳闸/闭锁)2">
            <DOI name="SPCSO2" desc="跳母线断路器">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
          </LN>
          <LN lnClass="GGIO" inst="1" lnType="GGIO_ProtInputs" desc="通用输入">
            <DOI name="AnIn1" desc="接收母线II/线路2采样 (电压A相)" />
            <DOI name="AnIn2" desc="接收母线II/线路2采样 (电压B相)" />
            <DOI name="AnIn3" desc="接收母线II/线路2采样 (电压C相)" />
            <DOI name="AnIn4" desc="接收母线II/线路2采样 (电流A相)" />
            <DOI name="AnIn5" desc="接收母线II/线路2采样 (电流B相)" />
            <DOI name="AnIn6" desc="接收母线II/线路2采样 (电流C相)" />
            <DOI name="Ind2" desc="接收断路器B位置 (来自BCUB)" />
            <DOI name="Ind3" desc="接收断路器C位置 (来自BCUC)" />
            <Inputs desc="保护输入信号订阅">
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsA" lnClass="TVTR" lnInst="1"
                doName="Vol" intAddr="LD0/GGIO1.AnIn1" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsB" lnClass="TVTR" lnInst="2"
                doName="Vol" intAddr="LD0/GGIO1.AnIn2" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsC" lnClass="TVTR" lnInst="3"
                doName="Vol" intAddr="LD0/GGIO1.AnIn3" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsA" lnClass="TCTR" lnInst="1"
                doName="Amp" intAddr="LD0/GGIO1.AnIn4" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsB" lnClass="TCTR" lnInst="2"
                doName="Amp" intAddr="LD0/GGIO1.AnIn5" />
              <ExtRef iedName="IED_MU2" ldInst="MU" prefix="PhsC" lnClass="TCTR" lnInst="3"
                doName="Amp" intAddr="LD0/GGIO1.AnIn6" />
              <ExtRef iedName="IED_BCUB" ldInst="LD0" lnClass="XCBR" lnInst="1" doName="Pos"
                daName="stVal" intAddr="LD0/GGIO1.Ind2.stVal" />
              <ExtRef iedName="IED_BCUC" ldInst="LD0" lnClass="XCBR" lnInst="1" doName="Pos"
                daName="stVal" intAddr="LD0/GGIO1.Ind3.stVal" />
            </Inputs>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="IED_MU1" type="MUDev" manufacturer="ExampleCorp" desc="合并单元1">
    <Services>
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ReadWrite />
      <GSSE max="0" />
      <GOOSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication />
        <LDevice inst="MU">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_MU1_Samples" desc="MU1采样值 (线路1 I ABC + 母线I V ABC)">
              <FCDA ldInst="MU" prefix="PhsA" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsB" lnClass="TCTR" lnInst="2" doName="Amp" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsC" lnClass="TCTR" lnInst="3" doName="Amp" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsA" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsB" lnClass="TVTR" lnInst="2" doName="Vol" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsC" lnClass="TVTR" lnInst="3" doName="Vol" fc="MX" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <SampledValueControl name="SVCB_MU1_Samples" datSet="DS_MU1_Samples"
              smvID="MU1_Stream_BusI_Line1" confRev="5" smpRate="80" nofASDU="1" multicast="true">
              <SmvOpts refreshTime="false" sampleSynchronized="true" sampleRate="false"
                security="false" dataRef="false" />
            </SampledValueControl>
          </LN0>
          <LN lnClass="TCTR" prefix="PhsA" inst="1" lnType="TCTR_Generic" desc="线路1电流采样">
            <DOI name="Amp" desc="电流采样值(A相)" />
          </LN>
          <LN lnClass="TCTR" prefix="PhsB" inst="2" lnType="TCTR_Generic" desc="线路1电流采样">
            <DOI name="Amp" desc="电流采样值(B相)" />
          </LN>
          <LN lnClass="TCTR" prefix="PhsC" inst="3" lnType="TCTR_Generic" desc="线路1电流采样">
            <DOI name="Amp" desc="电流采样值(C相)" />
          </LN>
          <LN lnClass="TVTR" prefix="PhsA" inst="1" lnType="TVTR_Generic" desc="母线1电压采样">
            <DOI name="Vol" desc="电压采样值(A相)" />
          </LN>
          <LN lnClass="TVTR" prefix="PhsB" inst="2" lnType="TVTR_Generic" desc="母线1电压采样">
            <DOI name="Vol" desc="电压采样值(B相)" />
          </LN>
          <LN lnClass="TVTR" prefix="PhsC" inst="3" lnType="TVTR_Generic" desc="母线1电压采样">
            <DOI name="Vol" desc="电压采样值(C相)" />
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="IED_MU2" type="MUDev" manufacturer="ExampleCorp"
    desc="合并单元2">
    <Services>
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ReadWrite />
      <GSSE max="0" />
      <GOOSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication />
        <LDevice inst="MU">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_MU2_Samples" desc="MU2采样值 (线路2 I ABC + 母线II V ABC)">
              <FCDA ldInst="MU" prefix="PhsA" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsB" lnClass="TCTR" lnInst="2" doName="Amp" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsC" lnClass="TCTR" lnInst="3" doName="Amp" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsA" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsB" lnClass="TVTR" lnInst="2" doName="Vol" fc="MX" />
              <FCDA ldInst="MU" prefix="PhsC" lnClass="TVTR" lnInst="3" doName="Vol" fc="MX" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <SampledValueControl name="SVCB_MU2_Samples" datSet="DS_MU2_Samples"
              smvID="MU2_Stream_BusII_Line2" confRev="5" smpRate="80" nofASDU="1" multicast="true">
              <SmvOpts refreshTime="false" sampleSynchronized="true" sampleRate="false"
                security="false" dataRef="false" />
            </SampledValueControl>
          </LN0>
          <LN lnClass="TCTR" prefix="PhsA" inst="1" lnType="TCTR_Generic" desc="线路2电流采样_A">
            <DOI name="Amp" desc="电流采样值(A相)" />
          </LN>
          <LN lnClass="TCTR" prefix="PhsB" inst="2" lnType="TCTR_Generic" desc="线路2电流采样_B">
            <DOI name="Amp" desc="电流采样值(B相)" />
          </LN>
          <LN lnClass="TCTR" prefix="PhsC" inst="3" lnType="TCTR_Generic" desc="线路2电流采样_C">
            <DOI name="Amp" desc="电流采样值(C相)" />
          </LN>
          <LN lnClass="TVTR" prefix="PhsA" inst="1" lnType="TVTR_Generic" desc="母线2电压采样_A">
            <DOI name="Vol" desc="电压采样值(A相)" />
          </LN>
          <LN lnClass="TVTR" prefix="PhsB" inst="2" lnType="TVTR_Generic" desc="母线2电压采样_B">
            <DOI name="Vol" desc="电压采样值(B相)" />
          </LN>
          <LN lnClass="TVTR" prefix="PhsC" inst="3" lnType="TVTR_Generic" desc="母线2电压采样_C">
            <DOI name="Vol" desc="电压采样值(C相)" />
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="IED_BCUA" type="GenericBCU" manufacturer="ExampleCorp"
    desc="智能终端 - 断路器 A">
    <Services>
      <DynAssociation />
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="5" maxAttributes="20" />
      <ReadWrite />
      <ConfReportControl max="2" />
      <GetCBValues />
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GOOSE max="3" />
      <GSSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication />
        <LDevice inst="LD0">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_BCUA_Status" desc="断路器A状态 (发给BKR, TRPROT1)">
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal"
                fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="q" fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="t" fc="ST" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <GSEControl name="GCB_BCUA_Status" datSet="DS_BCUA_Status" appID="10A1" confRev="4"
              type="GOOSE" desc="发送BCU A状态" />
          </LN0>
          <LN lnClass="XCBR" inst="1" lnType="XCBR_Generic" desc="断路器A状态 (源)">
            <DOI name="Pos" desc="断路器三相位置 (给DS_BCUA_Status)">
              <DAI name="stVal">
                <Val>off</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="BlkOpn">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
            <DOI name="BlkCls">
              <DAI name="stVal">
                <Val>false</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
            </DOI>
            <DOI name="Loc" />
            <DOI name="OpCnt" />
          </LN>
          <LN lnClass="GGIO" inst="1" lnType="GGIO_BCUInputs" desc="控制命令输入 (订阅)">
            <DOI name="Ind1" desc="接收BKR控制命令 (来自IED_BKR)" />
            <DOI name="Ind2" desc="接收TRPROT1跳闸命令 (来自IED_TRPROT1)" />
            <Inputs desc="接收控制命令 (GOOSE)">
              <ExtRef iedName="IED_BKR" ldInst="LD0" prefix="" lnClass="CSWI" lnInst="1"
                doName="Pos" daName="stVal" intAddr="LD0/GGIO1.Ind1.stVal" />
              <ExtRef iedName="IED_TRPROT1" ldInst="LD0" prefix="" lnClass="PTRC" lnInst="1"
                doName="SPCSO1" daName="stVal" intAddr="LD0/GGIO1.Ind2.stVal" />
            </Inputs>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="IED_BCUB" type="GenericBCU" manufacturer="ExampleCorp"
    desc="智能终端 - 断路器 B ">
    <Services>
      <DynAssociation />
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="5" maxAttributes="20" />
      <ReadWrite />
      <ConfReportControl max="2" />
      <GetCBValues />
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GOOSE max="3" />
      <GSSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication />
        <LDevice inst="LD0">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_BCUB_Status" desc="断路器B状态 (发给BKR, TRPROT2)">
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal"
                fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="q" fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="t" fc="ST" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <GSEControl name="GCB_BCUB_Status" datSet="DS_BCUB_Status" appID="10A2" confRev="4"
              type="GOOSE" desc="发送BCU B状态" />
          </LN0>
          <LN lnClass="XCBR" inst="1" lnType="XCBR_Generic" desc="断路器B状态 (源)">
            <DOI name="Pos" desc="断路器三相位置 (给DS_BCUB_Status)">
              <DAI name="stVal">
                <Val>off</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="BlkOpn" />
            <DOI name="BlkCls" />
            <DOI name="Loc" />
            <DOI name="OpCnt" />
          </LN>
          <LN lnClass="GGIO" inst="1" lnType="GGIO_BCUInputs" desc="控制命令输入 (订阅)">
            <DOI name="Ind1" desc="接收BKR控制命令 (来自IED_BKR)" />
            <DOI name="Ind3" desc="接收TRPROT2跳闸命令 (来自IED_TRPROT2)" />
            <Inputs desc="接收控制命令 (GOOSE)">
              <ExtRef iedName="IED_BKR" ldInst="LD0" prefix="" lnClass="CSWI" lnInst="2"
                doName="Pos" daName="stVal" intAddr="LD0/GGIO1.Ind1.stVal" />
              <ExtRef iedName="IED_TRPROT2" ldInst="LD0" prefix="" lnClass="PTRC" lnInst="1"
                doName="SPCSO1" daName="stVal" intAddr="LD0/GGIO1.Ind3.stVal" />
            </Inputs>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="IED_BCUC" type="GenericBCU" manufacturer="ExampleCorp"
    desc="智能终端 - 母联断路器 C ">
    <Services>
      <DynAssociation />
      <GetDirectory />
      <GetDataObjectDefinition />
      <GetDataSetValue />
      <DataSetDirectory />
      <ConfDataSet max="5" maxAttributes="20" />
      <ReadWrite />
      <ConfReportControl max="2" />
      <GetCBValues />
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" />
      <GOOSE max="4" />
      <GSSE max="0" />
      <ConfLNs fixPrefix="true" fixLnInst="true" />
    </Services>
    <AccessPoint name="AP1">
      <Server>
        <Authentication />
        <LDevice inst="LD0">
          <LN0 lnClass="LLN0" inst="" lnType="LLN0_Generic">
            <DataSet name="DS_BCUC_Status" desc="断路器C状态 (发给BKR, TRPROT1, TRPROT2)">
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal"
                fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="q" fc="ST" />
              <FCDA ldInst="LD0" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="t" fc="ST" />
            </DataSet>
            <DOI name="Mod">
              <DAI name="stVal">
                <Val>on</Val>
              </DAI>
            </DOI>
            <DOI name="Health">
              <DAI name="stVal">
                <Val>Ok</Val>
              </DAI>
            </DOI>
            <GSEControl name="GCB_BCUC_Status" datSet="DS_BCUC_Status" appID="10A9" confRev="4"
              type="GOOSE" desc="发送BCU C状态" />
          </LN0>
          <LN lnClass="XCBR" inst="1" lnType="XCBR_Generic" desc="断路器C状态 (源)">
            <DOI name="Pos" desc="断路器三相位置 (给DS_BCUC_Status)">
              <DAI name="stVal">
                <Val>off</Val>
              </DAI>
              <DAI name="q">
                <Val>validity=good</Val>
              </DAI>
              <DAI name="t" />
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
            </DOI>
            <DOI name="BlkOpn" />
            <DOI name="BlkCls" />
            <DOI name="Loc" />
            <DOI name="OpCnt" />
          </LN>
          <LN lnClass="GGIO" inst="1" lnType="GGIO_BCUInputs" desc="控制命令输入 (订阅)">
            <DOI name="Ind1" desc="接收备自投控制命令 (来自IED_BKR)" />
            <DOI name="Ind2" desc="接收保护1跳闸命令 (来自IED_TRPROT1)" />
            <DOI name="Ind3" desc="接收保护2跳闸命令 (来自IED_TRPROT2)" />
            <Inputs desc="接收控制命令 (GOOSE)">
              <ExtRef iedName="IED_BKR" ldInst="LD0" prefix="" lnClass="CSWI" lnInst="3"
                doName="Pos" daName="stVal" intAddr="LD0/GGIO1.Ind1.stVal" />
              <ExtRef iedName="IED_TRPROT1" ldInst="LD0" prefix="" lnClass="PTRC" lnInst="2"
                doName="SPCSO2" daName="stVal" intAddr="LD0/GGIO1.Ind2.stVal" />
              <ExtRef iedName="IED_TRPROT2" ldInst="LD0" prefix="" lnClass="PTRC" lnInst="2"
                doName="SPCSO2" daName="stVal" intAddr="LD0/GGIO1.Ind3.stVal" />
            </Inputs>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <DataTypeTemplates>
    <LNodeType id="PTRC_TripBlock" lnClass="PTRC">
      <DO name="Mod" type="INC_Mod_Placeholder" />
      <DO name="Beh" type="INS_Beh_Placeholder" />
      <DO name="Health" type="INS_Health_Placeholder" />
      <DO name="NamPlt" type="LPL_NamPlt_Placeholder" />
      <DO name="SPCSO1" type="DPC_Placeholder" />
      <DO name="SPCSO2" type="DPC_Placeholder" />
      <DO name="Ind1" type="DPC_Placeholder" />
    </LNodeType>
    <LNodeType id="GGIO_ProtInputs" lnClass="GGIO">
      <DO name="Ind1" type="DPC_Placeholder" />
      <DO name="Ind2" type="DPC_Placeholder" />
      <DO name="Ind3" type="DPC_Placeholder" />
      <DO name="Ind4" type="DPC_Placeholder" />
      <DO name="Ind5" type="DPC_Placeholder" />
      <DO name="AnIn1" type="MV_Placeholder" />
      <DO name="AnIn2" type="MV_Placeholder" />
      <DO name="AnIn3" type="MV_Placeholder" />
      <DO name="AnIn4" type="MV_Placeholder" />
      <DO name="AnIn5" type="MV_Placeholder" />
      <DO name="AnIn6" type="MV_Placeholder" />
    </LNodeType>
    <LNodeType id="GGIO_BCUInputs" lnClass="GGIO">
      <DO name="Ind1" type="DPC_Placeholder" />
      <DO name="Ind2" type="DPC_Placeholder" />
      <DO name="Ind3" type="DPC_Placeholder" />
    </LNodeType>
    <LNodeType id="LLN0_Generic" lnClass="LLN0">
      <DO name="Mod" type="INC_Mod_Placeholder" />
      <DO name="Health" type="INS_Health_Placeholder" />
      <DO name="Beh" type="INS_Beh_Placeholder" />
      <DO name="NamPlt" type="LPL_NamPlt_Placeholder" />
    </LNodeType>
    <LNodeType id="TCTR_Generic" lnClass="TCTR">
      <DO name="Amp" type="MV_Amp_Placeholder" />
      <DO name="NamPlt" type="LPL_NamPlt_Placeholder" />
      <DO name="Beh" type="INS_Beh_Placeholder" />
    </LNodeType>
    <LNodeType id="TVTR_Generic" lnClass="TVTR">
      <DO name="Vol" type="MV_Vol_Placeholder" />
      <DO name="NamPlt" type="LPL_NamPlt_Placeholder" />
      <DO name="Beh" type="INS_Beh_Placeholder" />
    </LNodeType>
    <LNodeType id="CSWI_Generic" lnClass="CSWI">
      <DO name="Mod" type="INC_Mod_Placeholder" />
      <DO name="Beh" type="INS_Beh_Placeholder" />
      <DO name="Health" type="INS_Health_Placeholder" />
      <DO name="NamPlt" type="LPL_NamPlt_Placeholder" />
      <DO name="Pos" type="DPC_Placeholder" />
    </LNodeType>
    <LNodeType id="PTOC_Generic" lnClass="PTOC">
      <DO name="Mod" type="INC_Mod_Placeholder" />
      <DO name="Beh" type="INS_Beh_Placeholder" />
      <DO name="Health" type="INS_Health_Placeholder" />
      <DO name="NamPlt" type="LPL_NamPlt_Placeholder" />
      <DO name="Str" type="ACD_Placeholder" />
      <DO name="Op" type="ACT_Placeholder" />
      <DO name="TmACrv" type="CSD_Placeholder" />
    </LNodeType>
    <LNodeType id="XCBR_Generic" lnClass="XCBR">
      <DO name="Mod" type="INC_Mod_Placeholder" />
      <DO name="Beh" type="INS_Beh_Placeholder" />
      <DO name="Health" type="INS_Health_Placeholder" />
      <DO name="NamPlt" type="LPL_NamPlt_Placeholder" />
      <DO name="Loc" type="SPS_Placeholder" />
      <DO name="OpCnt" type="INS_Integer_Placeholder" />
      <DO name="Pos" type="DPC_Placeholder" />
      <DO name="BlkOpn" type="SPC_Placeholder" />
      <DO name="BlkCls" type="SPC_Placeholder" />
    </LNodeType>
    <DOType cdc="DPC" id="DPC_Placeholder">
      <DA name="stVal" bType="Dbpos" fc="ST" dchg="true" dupd="true" />
      <DA name="q" bType="Quality" fc="ST" qchg="true" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" type="CtlModelKind_Placeholder" fc="CF" />
    </DOType>
    <DOType cdc="INC" id="INC_Mod_Placeholder">
      <DA name="stVal" bType="Enum" type="BehKind_Placeholder" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" type="CtlModelKind_Placeholder" fc="CF" />
    </DOType>
    <DOType cdc="INS" id="INS_Health_Placeholder">
      <DA name="stVal" bType="Enum" type="HealthKind_Placeholder" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType cdc="INS" id="INS_Beh_Placeholder">
      <DA name="stVal" bType="Enum" type="BehKind_Placeholder" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType cdc="LPL" id="LPL_NamPlt_Placeholder">
      <DA name="vendor" bType="VisString255" fc="DC" />
      <DA name="swRev" bType="VisString255" fc="DC" />
      <DA name="d" bType="VisString255" fc="DC" />
    </DOType>
    <DOType cdc="MV" id="MV_Amp_Placeholder">
      <DA name="instMag" bType="Struct" type="AnalogueValue_Placeholder" fc="MX" />
      <DA name="mag" bType="Struct" type="AnalogueValue_Placeholder" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
    </DOType>
    <DOType cdc="MV" id="MV_Vol_Placeholder">
      <DA name="instMag" bType="Struct" type="AnalogueValue_Placeholder" fc="MX" />
      <DA name="mag" bType="Struct" type="AnalogueValue_Placeholder" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
    </DOType>
    <DOType cdc="INS" id="INS_Integer_Placeholder">
      <DA name="stVal" bType="INT32" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType cdc="SPS" id="SPS_Placeholder">
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType cdc="SPC" id="SPC_Placeholder">
      <DA name="ctlVal" bType="BOOLEAN" fc="CO" />
      <DA name="stVal" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
      <DA name="ctlModel" bType="Enum" type="CtlModelKind_Placeholder" fc="CF" />
    </DOType>
    <DOType cdc="MV" id="MV_Placeholder">
      <DA name="mag" bType="Struct" type="AnalogueValue_Placeholder" fc="MX" />
      <DA name="q" bType="Quality" fc="MX" />
      <DA name="t" bType="Timestamp" fc="MX" />
    </DOType>
    <DOType cdc="ACD" id="ACD_Placeholder">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="dirGeneral" bType="Enum" type="DirectionKind_Placeholder" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType cdc="ACT" id="ACT_Placeholder">
      <DA name="general" bType="BOOLEAN" fc="ST" />
      <DA name="q" bType="Quality" fc="ST" />
      <DA name="t" bType="Timestamp" fc="ST" />
    </DOType>
    <DOType cdc="CSD" id="CSD_Placeholder">
      <DA name="charact" bType="Enum" type="CurveCharKind_Placeholder" fc="CO" />
      <DA name="minVal" bType="FLOAT32" fc="CO" />
      <DA name="maxVal" bType="FLOAT32" fc="CO" />
    </DOType>
    <DAType id="AnalogueValue_Placeholder">
      <BDA name="f" bType="FLOAT32" />
    </DAType>
    <EnumType id="BehKind_Placeholder">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="HealthKind_Placeholder">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="CtlModelKind_Placeholder">
      <EnumVal ord="1">status-only</EnumVal>
      <EnumVal ord="2">direct-with-normal-security</EnumVal>
      <EnumVal ord="3">sbo-with-normal-security</EnumVal>
      <EnumVal ord="4">direct-with-enhanced-security</EnumVal>
      <EnumVal ord="5">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="DirectionKind_Placeholder">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
      <EnumVal ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="CurveCharKind_Placeholder">
      <EnumVal ord="1">IEC Standard Inverse</EnumVal>
      <EnumVal ord="2">IEC Very Inverse</EnumVal>
      <EnumVal ord="3">IEC Extremely Inverse</EnumVal>
      <EnumVal ord="10">Definite Time</EnumVal>
    </EnumType>
  </DataTypeTemplates>
</SCL>