.class public final synthetic Lcom/android/quickstep/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/TransformParams;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/quickstep/util/TaskViewSimulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/TransformParams;ZLcom/android/quickstep/util/TaskViewSimulator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/x;->a:Lcom/android/quickstep/util/TransformParams;

    iput-boolean p2, p0, Lcom/android/quickstep/x;->b:Z

    iput-object p3, p0, Lcom/android/quickstep/x;->c:Lcom/android/quickstep/util/TaskViewSimulator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/x;->a:Lcom/android/quickstep/util/TransformParams;

    iget-boolean v1, p0, Lcom/android/quickstep/x;->b:Z

    iget-object p0, p0, Lcom/android/quickstep/x;->c:Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->c(Lcom/android/quickstep/util/TransformParams;ZLcom/android/quickstep/util/TaskViewSimulator;)V

    return-void
.end method
