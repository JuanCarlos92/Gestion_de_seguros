//*Exportaciones de terceros
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:riverpod_annotation/riverpod_annotation.dart';
export 'package:flutter/material.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:go_router/go_router.dart';
export 'package:dio/dio.dart';
export 'package:country_picker/country_picker.dart';
export 'package:equatable/equatable.dart';
export 'package:flutter_localizations/flutter_localizations.dart';
export 'dart:io';

//?Mis importaciones

export 'exports.dart';
export '../theme/colors.dart';

export '../services/auth_service.dart';
export '../../pages/auth/provider/state/login_state.dart';
export '../../controllers/auth/auth_controller.dart';
export '../../pages/auth/provider/injection/auth_service_injection.dart';
export '../../models/request/login.dart';
export '../../models/response/product_response.dart';
export '../../models/response/login_response.dart';

export '../services/register_service.dart';
export '../../pages/register/provider/state/register_state.dart';
export '../../controllers/register/register_controller.dart';
export '../../models/request/register.dart';

export '../../core/errors/failure.dart';
export '../../core/errors/exceptions.dart';
export '../../core/remote/dio_network_service.dart';
export '../../core/remote/network_service.dart';
export '../../core/utils/typedef.dart';
export '../../core/provider/injection/dio_network_injection.dart';
export '../../core/config/app_env.dart';
export '../../core/globals.dart';
export '../../core/mixins/exception_handler_mixin.dart';
export '../../core/services/company_service.dart';

export '../errors/error_utils.dart';

export '../ui/widgets/button.dart';
export '../ui/widgets/contenedor.dart';
export '../ui/widgets/texto.dart';
export '../ui/widgets/country_phone_selector.dart';

export '../../pages/product/ui/widgets/family/widgets_option.dart';
export '../../pages/product/ui/widgets/bar/app_bar.dart';
export '../../pages/product/ui/widgets/bar/bottom_navigation_bar.dart';
export '../../pages/product/ui/pages/family_page.dart';
export '../../pages/product/ui/pages/company_page.dart';
export '../../pages/product/ui/pages/form_page.dart';
export '../../models/response/company_response.dart';

export '../../pages/auth/ui/models/login_data.dart';
export '../../pages/auth/ui/widgets/input_widget.dart';
export '../../models/request/lopd.dart';

export '../../routes/app_router.dart';

export '../../pages/register/provider/injection/register_service_injection.dart';
export '../../pages/register/ui/widgets/input_widget.dart';
export '../../pages/register/ui/models/register_data.dart';

export '../../pages/home/ui/widgets/custom_app_bar.dart';
export '../../pages/home/ui/widgets/cards.dart';
export '../../pages/home/ui/widgets/renewal_button.dart';
export '../../pages/home/ui/widgets/custom_floating_button.dart';
export '../../pages/home/ui/widgets/cards_tipes.dart';
export '../../providers/product/products_provider.dart';
export '../../providers/company/company_provider.dart';
