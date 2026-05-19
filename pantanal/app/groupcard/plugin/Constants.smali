.class public final Lpantanal/app/groupcard/plugin/Constants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;,
        Lpantanal/app/groupcard/plugin/Constants$PluginClassField;
    }
.end annotation


# static fields
.field public static final BREENO_SUGGESTIONS_INTRODUCE_JUMP_LAST_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.operationManual"

.field public static final BREENO_SUGGESTIONS_INTRODUCE_JUMP_LAST_URI:Ljava/lang/String; = "nativeapp://com.oplus.operationManual.FEEDBACK_AND_TIPS"

.field public static final BREENO_SUGGESTIONS_INTRODUCE_JUMP_PRIORITY_URI:Ljava/lang/String; = "nativeapp://coloros.intent.action.sceneservice.seedlingcard.tips"

.field public static final INSTANCE:Lpantanal/app/groupcard/plugin/Constants;

.field public static final INTRODUCE_URL:Ljava/lang/String; = "POCKET_PRIORITY_URL"

.field public static final PACKAGE_NAME_SCENE_SERVICE:Ljava/lang/String; = "com.coloros.sceneservice"

.field public static final PACKAGE_NAME_UMS:Ljava/lang/String; = "com.oplus.pantanal.ums"

.field public static final PARAMS_KEY:Ljava/lang/String; = "card_url"

.field public static final POCKET_URL:Ljava/lang/String; = "POCKET_LAST_URL"

.field public static final POCKET_VIEW_INTENT_PREFIX:Ljava/lang/String; = "fat://fb/web?target="


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/groupcard/plugin/Constants;

    invoke-direct {v0}, Lpantanal/app/groupcard/plugin/Constants;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/plugin/Constants;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
