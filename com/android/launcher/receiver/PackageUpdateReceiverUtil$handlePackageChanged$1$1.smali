.class final Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;
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
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher.receiver.PackageUpdateReceiverUtil$handlePackageChanged$1$1"
    f = "PackageUpdateReceiverUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;-><init>(Landroid/content/Context;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->label:I

    if-nez v0, :cond_2c

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->$context:Landroid/content/Context;

    sget-object v1, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GLOBAL_SEARCH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/android/launcher/receiver/PackageUpdateReceiverUtil$handlePackageChanged$1$1;->$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/config/FeatureOption;->initGlobalSearchMateData(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;

    const-string/jumbo v0, "packageReplaced"

    invoke-direct {p1, v0}, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_29
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
