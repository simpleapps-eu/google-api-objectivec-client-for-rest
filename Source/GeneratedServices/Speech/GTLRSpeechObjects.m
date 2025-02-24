// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Speech-to-Text API (speech/v1)
// Description:
//   Converts audio to text by applying powerful neural network models.
// Documentation:
//   https://cloud.google.com/speech-to-text/docs/quickstart-protocol

#import "GTLRSpeechObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRSpeech_RecognitionConfig.encoding
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_Amr    = @"AMR";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_AmrWb  = @"AMR_WB";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_EncodingUnspecified = @"ENCODING_UNSPECIFIED";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_Flac   = @"FLAC";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_Linear16 = @"LINEAR16";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_Mulaw  = @"MULAW";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_OggOpus = @"OGG_OPUS";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_SpeexWithHeaderByte = @"SPEEX_WITH_HEADER_BYTE";
NSString * const kGTLRSpeech_RecognitionConfig_Encoding_WebmOpus = @"WEBM_OPUS";

// GTLRSpeech_RecognitionMetadata.interactionType
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_Dictation = @"DICTATION";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_Discussion = @"DISCUSSION";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_InteractionTypeUnspecified = @"INTERACTION_TYPE_UNSPECIFIED";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_PhoneCall = @"PHONE_CALL";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_Presentation = @"PRESENTATION";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_ProfessionallyProduced = @"PROFESSIONALLY_PRODUCED";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_VoiceCommand = @"VOICE_COMMAND";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_Voicemail = @"VOICEMAIL";
NSString * const kGTLRSpeech_RecognitionMetadata_InteractionType_VoiceSearch = @"VOICE_SEARCH";

// GTLRSpeech_RecognitionMetadata.microphoneDistance
NSString * const kGTLRSpeech_RecognitionMetadata_MicrophoneDistance_Farfield = @"FARFIELD";
NSString * const kGTLRSpeech_RecognitionMetadata_MicrophoneDistance_MicrophoneDistanceUnspecified = @"MICROPHONE_DISTANCE_UNSPECIFIED";
NSString * const kGTLRSpeech_RecognitionMetadata_MicrophoneDistance_Midfield = @"MIDFIELD";
NSString * const kGTLRSpeech_RecognitionMetadata_MicrophoneDistance_Nearfield = @"NEARFIELD";

// GTLRSpeech_RecognitionMetadata.originalMediaType
NSString * const kGTLRSpeech_RecognitionMetadata_OriginalMediaType_Audio = @"AUDIO";
NSString * const kGTLRSpeech_RecognitionMetadata_OriginalMediaType_OriginalMediaTypeUnspecified = @"ORIGINAL_MEDIA_TYPE_UNSPECIFIED";
NSString * const kGTLRSpeech_RecognitionMetadata_OriginalMediaType_Video = @"VIDEO";

// GTLRSpeech_RecognitionMetadata.recordingDeviceType
NSString * const kGTLRSpeech_RecognitionMetadata_RecordingDeviceType_OtherIndoorDevice = @"OTHER_INDOOR_DEVICE";
NSString * const kGTLRSpeech_RecognitionMetadata_RecordingDeviceType_OtherOutdoorDevice = @"OTHER_OUTDOOR_DEVICE";
NSString * const kGTLRSpeech_RecognitionMetadata_RecordingDeviceType_Pc = @"PC";
NSString * const kGTLRSpeech_RecognitionMetadata_RecordingDeviceType_PhoneLine = @"PHONE_LINE";
NSString * const kGTLRSpeech_RecognitionMetadata_RecordingDeviceType_RecordingDeviceTypeUnspecified = @"RECORDING_DEVICE_TYPE_UNSPECIFIED";
NSString * const kGTLRSpeech_RecognitionMetadata_RecordingDeviceType_Smartphone = @"SMARTPHONE";
NSString * const kGTLRSpeech_RecognitionMetadata_RecordingDeviceType_Vehicle = @"VEHICLE";

// ----------------------------------------------------------------------------
//
//   GTLRSpeech_Context
//

@implementation GTLRSpeech_Context
@dynamic phrases;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"phrases" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_ListOperationsResponse
//

@implementation GTLRSpeech_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRSpeech_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_LongRunningRecognizeMetadata
//

@implementation GTLRSpeech_LongRunningRecognizeMetadata
@dynamic lastUpdateTime, progressPercent, startTime, uri;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_LongRunningRecognizeRequest
//

@implementation GTLRSpeech_LongRunningRecognizeRequest
@dynamic audio, config, outputConfig;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_LongRunningRecognizeResponse
//

@implementation GTLRSpeech_LongRunningRecognizeResponse
@dynamic outputConfig, outputError, results, totalBilledTime;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"results" : [GTLRSpeech_RecognitionResult class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_Operation
//

@implementation GTLRSpeech_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_Operation_Metadata
//

@implementation GTLRSpeech_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_Operation_Response
//

@implementation GTLRSpeech_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_RecognitionAlternative
//

@implementation GTLRSpeech_RecognitionAlternative
@dynamic confidence, transcript, words;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"words" : [GTLRSpeech_WordInfo class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_RecognitionAudio
//

@implementation GTLRSpeech_RecognitionAudio
@dynamic content, uri;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_RecognitionConfig
//

@implementation GTLRSpeech_RecognitionConfig
@dynamic alternativeLanguageCodes, audioChannelCount, diarizationConfig,
         enableAutomaticPunctuation, enableSeparateRecognitionPerChannel,
         enableWordConfidence, enableWordTimeOffsets, encoding, languageCode,
         maxAlternatives, metadata, model, profanityFilter, sampleRateHertz,
         speechContexts, useEnhanced;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"alternativeLanguageCodes" : [NSString class],
    @"speechContexts" : [GTLRSpeech_Context class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_RecognitionMetadata
//

@implementation GTLRSpeech_RecognitionMetadata
@dynamic audioTopic, industryNaicsCodeOfAudio, interactionType,
         microphoneDistance, originalMediaType, originalMimeType,
         recordingDeviceName, recordingDeviceType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_RecognitionResult
//

@implementation GTLRSpeech_RecognitionResult
@dynamic alternatives, channelTag, languageCode;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"alternatives" : [GTLRSpeech_RecognitionAlternative class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_RecognizeRequest
//

@implementation GTLRSpeech_RecognizeRequest
@dynamic audio, config;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_RecognizeResponse
//

@implementation GTLRSpeech_RecognizeResponse
@dynamic results, totalBilledTime;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"results" : [GTLRSpeech_RecognitionResult class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_SpeakerDiarizationConfig
//

@implementation GTLRSpeech_SpeakerDiarizationConfig
@dynamic enableSpeakerDiarization, maxSpeakerCount, minSpeakerCount, speakerTag;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_Status
//

@implementation GTLRSpeech_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRSpeech_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_Status_Details_Item
//

@implementation GTLRSpeech_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_TranscriptOutputConfig
//

@implementation GTLRSpeech_TranscriptOutputConfig
@dynamic gcsUri;
@end


// ----------------------------------------------------------------------------
//
//   GTLRSpeech_WordInfo
//

@implementation GTLRSpeech_WordInfo
@dynamic confidence, endTime, speakerTag, startTime, word;
@end
