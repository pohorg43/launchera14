.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUnmuteTask()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->access$getUnmuteTask$cp()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;

    move-result-object p0

    return-object p0
.end method

.method public final setUnmuteTask(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->access$setUnmuteTask$cp(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier$UnmuteTask;)V

    return-void
.end method
