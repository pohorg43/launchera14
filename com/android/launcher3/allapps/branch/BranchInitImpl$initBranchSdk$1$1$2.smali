.class final Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.android.launcher3.allapps.branch.BranchInitImpl$initBranchSdk$1$1$2"
    f = "BranchInitImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $gaid:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$gaid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$gaid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->label:I

    if-nez v0, :cond_49

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$gaid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->setGAID(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Branch gaid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$gaid:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "BranchInitImpl"

    invoke-static {p1, v0, v1}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "key_branch_sdk_init"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsBranchInit()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_46
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_49
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
