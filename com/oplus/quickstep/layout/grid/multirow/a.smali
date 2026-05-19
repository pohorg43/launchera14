.class public final synthetic Lcom/oplus/quickstep/layout/grid/multirow/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;

.field public final synthetic b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

.field public final synthetic c:Lcom/android/quickstep/views/TaskView;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->a:Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p3, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->c:Lcom/android/quickstep/views/TaskView;

    iput-boolean p4, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->d:Z

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 13

    iget-object v0, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->a:Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;

    iget-object v1, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget-object v2, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->c:Lcom/android/quickstep/views/TaskView;

    iget-boolean v3, p0, Lcom/oplus/quickstep/layout/grid/multirow/a;->d:Z

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;->a(Lcom/oplus/quickstep/layout/grid/multirow/OplusTaskAnimationBuilderMutliRowImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
