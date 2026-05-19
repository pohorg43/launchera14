.class public interface abstract annotation Lcom/oplus/pantanal/plugin/PluginErrorCode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;

.field public static final PLUGIN_COPY_ERROR:I = 0x3e8

.field public static final PLUGIN_COPY_SUCCESS:I = 0x3f4

.field public static final PLUGIN_ENTRANCE_NOT_SUPPORT:I = 0x3ec

.field public static final PLUGIN_FEATURE_NOT_SUPPORT:I = 0x3eb

.field public static final PLUGIN_NOT_NEED_UPDATE:I = 0x3f2

.field public static final PLUGIN_THROW_EXCE_ERROR:I = 0x3ea

.field public static final PLUGIN_UNKNOWN_ERROR:I = 0x3ed

.field public static final PLUGIN_UPDATE_SUCCESS:I = 0x3f3

.field public static final PLUGIN_VERIFY_ERROR:I = 0x3e9


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;->$$INSTANCE:Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;

    sput-object v0, Lcom/oplus/pantanal/plugin/PluginErrorCode;->Companion:Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;

    return-void
.end method
