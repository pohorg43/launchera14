.class public Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public isSupportsPocketStudio:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public taskOrder:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public topComponent:Landroid/content/ComponentName;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->taskOrder:I

    return-void
.end method

.method private final isTaskInfoSupport(Landroid/app/TaskInfo;)Z
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isPocketStudioMultiWindowSupported(Landroid/app/TaskInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_31

    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isTaskInfoSupport(), e="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskKey"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_31
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final init(Landroid/app/TaskInfo;)V
    .registers 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    goto :goto_11

    :cond_a
    iget-object v0, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    iget-object v0, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    :goto_11
    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->topComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->isTaskInfoSupport(Landroid/app/TaskInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->isSupportsPocketStudio:Z

    return-void
.end method

.method public final topClassName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->topComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    if-nez p0, :cond_e

    const-string p0, ""

    :cond_e
    return-object p0
.end method
