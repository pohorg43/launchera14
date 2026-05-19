.class final Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->updateSingeDisplayTimes(Ljava/lang/String;)V
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskbarCompatibleAppSwitchMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskbarCompatibleAppSwitchMonitor.kt\ncom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,377:1\n1#2:378\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.popup.taskbarcompatiblefilter.TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3"
    f = "TaskbarCompatibleAppSwitchMonitor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $selfDisplayTimes:Lkotlin/jvm/internal/Ref$IntRef;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ljava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;

    iput-object p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->$selfDisplayTimes:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
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

    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->$selfDisplayTimes:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ljava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->label:I

    if-nez v0, :cond_34

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$updateSingeDisplayTimes$3;->$selfDisplayTimes:Lkotlin/jvm/internal/Ref$IntRef;

    sget-object v1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->Companion:Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "it.applicationContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB$Companion;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/CompatibleAppsDB;->getCompatibleAppsDao()Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;

    move-result-object p1

    if-eqz p1, :cond_31

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p1, v0, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/dao/CompatibleAppsDao;->updateApp(Ljava/lang/String;I)V

    :cond_31
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
