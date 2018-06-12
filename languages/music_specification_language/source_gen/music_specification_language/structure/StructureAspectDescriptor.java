package music_specification_language.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptClip = createDescriptorForClip();
  /*package*/ final ConceptDescriptor myConceptInstrument = createDescriptorForInstrument();
  /*package*/ final ConceptDescriptor myConceptMSLProgram = createDescriptorForMSLProgram();
  /*package*/ final ConceptDescriptor myConceptSegment = createDescriptorForSegment();
  /*package*/ final ConceptDescriptor myConceptsegment_clip = createDescriptorForsegment_clip();
  private final LanguageConceptSwitch myConceptIndex;

  public StructureAspectDescriptor() {
    myConceptIndex = new LanguageConceptSwitch();
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptClip, myConceptInstrument, myConceptMSLProgram, myConceptSegment, myConceptsegment_clip);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myConceptIndex.index(id)) {
      case LanguageConceptSwitch.Clip:
        return myConceptClip;
      case LanguageConceptSwitch.Instrument:
        return myConceptInstrument;
      case LanguageConceptSwitch.MSLProgram:
        return myConceptMSLProgram;
      case LanguageConceptSwitch.Segment:
        return myConceptSegment;
      case LanguageConceptSwitch.segment_clip:
        return myConceptsegment_clip;
      default:
        return null;
    }
  }

  /*package*/ int internalIndex(SAbstractConcept c) {
    return myConceptIndex.index(c);
  }

  private static ConceptDescriptor createDescriptorForClip() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("music_specification_language", "Clip", 0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320ccfL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:5aeed1a8-bae6-4890-a139-6d61c203fec3(music_specification_language.structure)/6137278502450367695");
    b.prop("pattern", 0x552bfe4802320cd9L, "6137278502450367705");
    b.prop("notes", 0x552bfe4802320cdcL, "6137278502450367708");
    b.associate("instrument", 0x552bfe480233ba44L).target(0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320cccL).optional(false).origin("6137278502450477636").done();
    b.alias("clip");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForInstrument() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("music_specification_language", "Instrument", 0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320cccL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:5aeed1a8-bae6-4890-a139-6d61c203fec3(music_specification_language.structure)/6137278502450367692");
    b.alias("instrument");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForMSLProgram() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("music_specification_language", "MSLProgram", 0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320cbeL);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:5aeed1a8-bae6-4890-a139-6d61c203fec3(music_specification_language.structure)/6137278502450367678");
    b.prop("bpm", 0x552bfe4802320cc1L, "6137278502450367681");
    b.aggregate("instruments", 0x552bfe4802320cc8L).target(0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320cccL).optional(false).ordered(true).multiple(true).origin("6137278502450367688").done();
    b.aggregate("clips", 0x552bfe4802320cc5L).target(0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320ccfL).optional(false).ordered(true).multiple(true).origin("6137278502450367685").done();
    b.aggregate("segments", 0x552bfe4802320cc3L).target(0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320ce5L).optional(false).ordered(true).multiple(true).origin("6137278502450367683").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForSegment() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("music_specification_language", "Segment", 0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320ce5L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:5aeed1a8-bae6-4890-a139-6d61c203fec3(music_specification_language.structure)/6137278502450367717");
    b.aggregate("clips", 0x552bfe4802320cfdL).target(0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320cecL).optional(false).ordered(true).multiple(true).origin("6137278502450367741").done();
    b.alias("segment");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForsegment_clip() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("music_specification_language", "segment_clip", 0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320cecL);
    b.class_(false, false, false);
    b.origin("r:5aeed1a8-bae6-4890-a139-6d61c203fec3(music_specification_language.structure)/6137278502450367724");
    b.prop("multiplicity", 0x552bfe4802320cefL, "6137278502450367727");
    b.associate("clip", 0x552bfe4802320cf5L).target(0xf9e4b29d3c894af7L, 0x8f5f5c06b22ba00bL, 0x552bfe4802320ccfL).optional(false).origin("6137278502450367733").done();
    return b.create();
  }
}
