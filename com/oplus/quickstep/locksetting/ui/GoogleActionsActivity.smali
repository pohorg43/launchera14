.class public final Lcom/oplus/quickstep/locksetting/ui/GoogleActionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/locksetting/ui/GoogleActionsActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/locksetting/ui/GoogleActionsActivity$Companion;

.field public static final GA_CLEAN_ACTION:Ljava/lang/String; = "com.android.launcher.action.GABREENOCLEAN"

.field public static final GA_GOTORECENT_ACTION:Ljava/lang/String; = "com.android.launcher.action.GAENTER"

.field public static final HOST_GA:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final SIGNATURE_GA:Ljava/lang/String; = "7e0f77a911ca01371fc013ef2668f7933490a492026d12bae946ece03f3321dd"

.field public static final TAG:Ljava/lang/String; = "GoogleActionsActivity"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/GoogleActionsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/locksetting/ui/GoogleActionsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/locksetting/ui/GoogleActionsActivity;->Companion:Lcom/oplus/quickstep/locksetting/ui/GoogleActionsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/oplus/quickstep/utils/SignatureUtils;->reflectGetReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/SignatureUtils;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reflectGetReferrer -"

    const-string v3, ",signature - "

    const-string v4, "，referere:"

    invoke-static {v2, p1, v3, v1, v4}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GoogleActionsActivity"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    const-string p1, "7e0f77a911ca01371fc013ef2668f7933490a492026d12bae946ece03f3321dd"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.launcher.action.GAENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.action.GAENTER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_76

    :cond_5a
    const-string v0, "com.android.launcher.action.GABREENOCLEAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.action.GABREENOCLEAN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_76
    :goto_76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
