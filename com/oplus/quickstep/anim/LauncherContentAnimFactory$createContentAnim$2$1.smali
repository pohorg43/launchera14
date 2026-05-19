.class final Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->createContentAnim(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $animDragLayer:Z

.field public final synthetic this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iput-boolean p2, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;->$animDragLayer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    iget-boolean v1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;->$animDragLayer:Z

    invoke-static {v0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$resetViews(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$createContentAnim$2$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$resetDepth(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Z)V

    return-void
.end method
