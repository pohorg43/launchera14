.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp$ISystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFlexibleTaskDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlexibleTaskDispatcher.kt\ncom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,315:1\n1#2:316\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;Z)V
    .registers 5

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemChanged(), detector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;

    invoke-static {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->access$getWrapper$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dispatching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;

    invoke-static {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->access$isShowMsgDispatching$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFT_Dispatcher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;

    invoke-static {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->access$getMRecentsView(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$systemListener$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;

    if-eqz p2, :cond_59

    sget-object p1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLOSE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z

    goto :goto_79

    :cond_59
    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->access$getWrapper$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result p2

    if-nez p2, :cond_79

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->access$isShowMsgDispatching$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;)Z

    move-result p2

    if-nez p2, :cond_79

    invoke-interface {p1}, Lcom/oplus/quickstep/dynamictask/sys/ISystemDetector;->type()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_74

    sget-object p1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->FOCUS_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    goto :goto_76

    :cond_74
    sget-object p1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->OPEN:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    :goto_76
    invoke-virtual {p0, v0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public registerType()I
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/SystemDetectorCamp;

    const/16 p0, 0xf

    return p0
.end method
