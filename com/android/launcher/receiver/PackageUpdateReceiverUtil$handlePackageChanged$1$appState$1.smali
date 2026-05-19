.class final Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.receiver.PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1"
    f = "PackageUpdateReceiverUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $packageName:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->$packageName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->$packageName:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->label:I

    if-nez v0, :cond_17

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$appState$1;->$packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/common/util/OplusLauncherDbUtils;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
