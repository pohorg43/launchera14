.class final Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RejectAlarmListener"
.end annotation


# instance fields
.field private final mCellLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    const-string v0, "cellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;->mCellLayout:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;->onAlarm$lambda$1(Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;)V

    return-void
.end method

.method private static final onAlarm$lambda$1(Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;->mCellLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->tryRegroup()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 3

    sget-object p1, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->access$setMRejectAlarmListener$p(Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;)V

    iget-object p1, p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;->mCellLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/card/groupcard/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/groupcard/a;-><init>(Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper$RejectAlarmListener;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
