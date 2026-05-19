.class public final Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/pantanal/plugin/PluginErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;

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

    new-instance v0, Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;

    invoke-direct {v0}, Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;-><init>()V

    sput-object v0, Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;->$$INSTANCE:Lcom/oplus/pantanal/plugin/PluginErrorCode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
