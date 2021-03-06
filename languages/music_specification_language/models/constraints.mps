<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:34c8e546-b82d-4c2f-8674-fc028b9888e6(music_specification_language.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="d1ne" ref="r:5aeed1a8-bae6-4890-a139-6d61c203fec3(music_specification_language.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
  </registry>
  <node concept="1M2fIO" id="4Mjiy6CMOxS">
    <ref role="1M2myG" to="d1ne:5kFZ$w2cwMY" resolve="MSLProgram" />
    <node concept="EnEH3" id="4Mjiy6CMOxT" role="1MhHOB">
      <ref role="EomxK" to="d1ne:5kFZ$w2cwN1" resolve="bpm" />
      <node concept="QB0g5" id="4Mjiy6CMOxV" role="QCWH9">
        <node concept="3clFbS" id="4Mjiy6CMOxW" role="2VODD2">
          <node concept="3clFbF" id="4Mjiy6CMODf" role="3cqZAp">
            <node concept="3eOSWO" id="4Mjiy6CMQoy" role="3clFbG">
              <node concept="1Wqviy" id="4Mjiy6CMODe" role="3uHU7B" />
              <node concept="3cmrfG" id="4wymITMjuhr" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="4wymITMj_sD">
    <ref role="1M2myG" to="d1ne:5kFZ$w2cwN_" resolve="SegmentDefinition" />
    <node concept="EnEH3" id="4wymITMj_sE" role="1MhHOB">
      <ref role="EomxK" to="d1ne:4NDpzA$I66D" resolve="length" />
      <node concept="QB0g5" id="4wymITMj_sG" role="QCWH9">
        <node concept="3clFbS" id="4wymITMj_sH" role="2VODD2">
          <node concept="3clFbF" id="4wymITMj_PT" role="3cqZAp">
            <node concept="1Wc70l" id="eR_204IJ6k" role="3clFbG">
              <node concept="1eOMI4" id="eR_204JeyB" role="3uHU7w">
                <node concept="3clFbC" id="eR_204ILjv" role="1eOMHV">
                  <node concept="3cmrfG" id="eR_204ILNS" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2dk9JS" id="eR_204Jf38" role="3uHU7B">
                    <node concept="1Wqviy" id="eR_204IJhV" role="3uHU7B" />
                    <node concept="3cmrfG" id="eR_204IKgU" role="3uHU7w">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="eR_204JcUq" role="3uHU7B">
                <node concept="3eOSWO" id="4wymITMjB_c" role="1eOMHV">
                  <node concept="1Wqviy" id="4wymITMj_PS" role="3uHU7B" />
                  <node concept="3cmrfG" id="4wymITMjCYt" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="eR_204IRZV">
    <ref role="1M2myG" to="d1ne:5kFZ$w2cwNf" resolve="ClipDefinition" />
    <node concept="EnEH3" id="eR_204IRZW" role="1MhHOB">
      <ref role="EomxK" to="d1ne:5kFZ$w2cwNp" resolve="pattern" />
      <node concept="QB0g5" id="eR_204IRZY" role="QCWH9">
        <node concept="3clFbS" id="eR_204IRZZ" role="2VODD2">
          <node concept="3clFbF" id="eR_204IS7i" role="3cqZAp">
            <node concept="3clFbC" id="eR_204IZ1v" role="3clFbG">
              <node concept="3cmrfG" id="eR_204IZyn" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2dk9JS" id="eR_204JfP1" role="3uHU7B">
                <node concept="2OqwBi" id="eR_204IVAv" role="3uHU7B">
                  <node concept="1Wqviy" id="eR_204IS7h" role="2Oq$k0" />
                  <node concept="liA8E" id="eR_204IWb0" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
                <node concept="3cmrfG" id="eR_204IXSa" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

