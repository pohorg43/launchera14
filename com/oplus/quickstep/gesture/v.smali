.class public final synthetic Lcom/oplus/quickstep/gesture/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/views/FloatingIconViewContainer;

.field public final synthetic b:F

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconViewContainer;FI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/v;->a:Lcom/android/launcher3/views/FloatingIconViewContainer;

    iput p2, p0, Lcom/oplus/quickstep/gesture/v;->b:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/v;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/v;->a:Lcom/android/launcher3/views/FloatingIconViewContainer;

    iget v1, p0, Lcom/oplus/quickstep/gesture/v;->b:F

    iget p0, p0, Lcom/oplus/quickstep/gesture/v;->c:I

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->a(Lcom/android/launcher3/views/FloatingIconViewContainer;FI)V

    return-void
.end method
