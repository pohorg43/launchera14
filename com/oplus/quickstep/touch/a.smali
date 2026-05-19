.class public final synthetic Lcom/oplus/quickstep/touch/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/touch/a;->a:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/touch/a;->a:Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->a(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;Lcom/android/launcher3/Alarm;)V

    return-void
.end method
