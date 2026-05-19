.class Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/custom/OplusGameBounceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameBounceBroadCastReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameBounceBroadCastReceiver"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/custom/OplusGameBounceUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.settings.action.GAME_BOUNCE_GAME_CLICK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "GameBounceBroadCastReceiver"

    const-string/jumbo p1, "onReceive,date changed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object p0

    const-string/jumbo p1, "open_package_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->access$102(Lcom/android/launcher/custom/OplusGameBounceUtils;Ljava/lang/String;)Ljava/lang/String;

    :cond_22
    return-void
.end method
