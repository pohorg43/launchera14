.class Lcom/oplus/OplusTrackManager$ScheduleTimeTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/OplusTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScheduleTimeTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/OplusTrackManager;


# direct methods
.method private constructor <init>(Lcom/oplus/OplusTrackManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/OplusTrackManager$ScheduleTimeTask;->this$0:Lcom/oplus/OplusTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/OplusTrackManager;Lcom/oplus/OplusTrackManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/OplusTrackManager$ScheduleTimeTask;-><init>(Lcom/oplus/OplusTrackManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object p0, p0, Lcom/oplus/OplusTrackManager$ScheduleTimeTask;->this$0:Lcom/oplus/OplusTrackManager;

    const-wide/32 v0, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/oplus/OplusTrackManager;->access$100(Lcom/oplus/OplusTrackManager;J)V

    return-void
.end method
