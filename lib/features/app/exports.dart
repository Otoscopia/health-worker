// data models exports
export 'data/models/patient_model.dart';
export 'data/models/screening_model.dart';

// domain entity exports
export 'domain/entity/patient_entity.dart';
export 'domain/entity/screening_entity.dart';

// domain providers exports
export 'domain/provider/add_patient_providers/birthdate_provider.dart';
export 'domain/provider/add_patient_providers/contact_number_provider.dart';
export 'domain/provider/add_patient_providers/fullname_provider.dart';
export 'domain/provider/add_patient_providers/gender_provider.dart';
export 'domain/provider/add_patient_providers/school_id.dart';
export 'domain/provider/add_patient_providers/school_name_provider.dart';
export 'domain/provider/screening_information/cheif_complain.dart';
export 'domain/provider/screening_information/complain_provider.dart';
export 'domain/provider/screening_information/frame_of_interest_provider.dart';
export 'domain/provider/screening_information/height_weight_provider.dart';
export 'domain/provider/screening_information/history_and_comment.dart';
export 'domain/provider/screening_information/medication_provider.dart';
export 'domain/provider/screening_information/similar_condition_and_allergies.dart';
export 'domain/provider/screening_information/temperature_and_blood_provider.dart';

// domain usestate exports
export 'domain/usestate/add_patient_usecase.dart';
export 'domain/usestate/add_screening_usecase.dart';
export 'domain/usestate/encryption.dart';

// presentation page exports
export 'presentation/pages/add_patient_information.dart';
export 'presentation/pages/dashboard.dart';
export 'presentation/pages/left_camera.dart';
export 'presentation/pages/review_information.dart';
export 'presentation/pages/right_camera.dart';
export 'presentation/pages/screening_information.dart';

// presentation providers exports
export 'presentation/providers/add_patient_provider.dart';
export 'presentation/providers/filter_provider.dart';
export 'presentation/providers/screening_provider.dart';


// presentation widgets imports
export 'presentation/widgets/floating_action_button.dart';
export 'presentation/widgets/search_input_box.dart';
export 'presentation/widgets/title_widget.dart';

// presentation widgets add patient imports
export 'presentation/widgets/add_patient_information.dart/add_patient_button.dart';
export 'presentation/widgets/add_patient_information.dart/birthdate_widget.dart';
export 'presentation/widgets/add_patient_information.dart/birthday_error.dart';
export 'presentation/widgets/add_patient_information.dart/gender_widget.dart';
export 'presentation/widgets/add_patient_information.dart/gender_error.dart';
export 'presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/contact_number_input.dart';
export 'presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/full_name_input.dart';
export 'presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/school_id_input.dart';
export 'presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/school_name_input.dart';

// presentation widgets dashboard imports
export 'presentation/widgets/dashboard_widgets/content_widget.dart';
export 'presentation/widgets/dashboard_widgets/filter_container_widget.dart';
export 'presentation/widgets/dashboard_widgets/table_widget.dart';
export 'presentation/widgets/dashboard_widgets/top_widget.dart';

export 'presentation/widgets/dashboard_widgets/content_widgets/greeting_card.dart';
export 'presentation/widgets/dashboard_widgets/filter_widgets/filter_card.dart';
export 'presentation/widgets/dashboard_widgets/filter_widgets/final_diagnosis.dart';
export 'presentation/widgets/dashboard_widgets/filter_widgets/initial_diagnosis.dart';
export 'presentation/widgets/dashboard_widgets/filter_widgets/medical_attention.dart';
export 'presentation/widgets/dashboard_widgets/filter_widgets/pending_diagnosis.dart';
export 'presentation/widgets/dashboard_widgets/table_widgets/material_widget.dart';
export 'presentation/widgets/dashboard_widgets/top_widgets/logo_widget.dart';
export 'presentation/widgets/dashboard_widgets/top_widgets/notification_widget.dart';
export 'presentation/widgets/dashboard_widgets/top_widgets/setting_widget.dart';
export 'presentation/widgets/dashboard_widgets/top_widgets/user_button_widget.dart';

// presentation widgets review information imports
export 'presentation/widgets/review_information/rich_text.dart';

// screening information imports
export 'presentation/widgets/screening_information/cheif_complain.dart';
export 'presentation/widgets/screening_information/examiner_and_date.dart';
export 'presentation/widgets/screening_information/frame_of_interest.dart';
export 'presentation/widgets/screening_information/height_and_weight.dart';
export 'presentation/widgets/screening_information/illness_and_comment.dart';
export 'presentation/widgets/screening_information/medication_widget.dart';
export 'presentation/widgets/screening_information/other_complain.dart';
export 'presentation/widgets/screening_information/patient_have_allergies.dart';
export 'presentation/widgets/screening_information/patient_similar_condition.dart';
export 'presentation/widgets/screening_information/patient_taking_medication.dart';
export 'presentation/widgets/screening_information/patient_undergo_surgery.dart';
export 'presentation/widgets/screening_information/temperature_and_blood.dart';

