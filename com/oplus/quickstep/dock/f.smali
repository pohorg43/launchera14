.class public final synthetic Lcom/oplus/quickstep/dock/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/dock/DockView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/oplus/quickstep/dock/DockIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;IIILcom/oplus/quickstep/dock/DockIconView;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/f;->a:Lcom/oplus/quickstep/dock/DockView;

    iput p2, p0, Lcom/oplus/quickstep/dock/f;->b:I

    iput-object p3, p0, Lcom/oplus/quickstep/dock/f;->c:Lcom/android/systemui/shared/recents/model/Task;

    iput p4, p0, Lcom/oplus/quickstep/dock/f;->d:I

    iput p5, p0, Lcom/oplus/quickstep/dock/f;->e:I

    iput p6, p0, Lcom/oplus/quickstep/dock/f;->f:I

    iput-object p7, p0, Lcom/oplus/quickstep/dock/f;->g:Lcom/oplus/quickstep/dock/DockIconView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/quickstep/dock/f;->a:Lcom/oplus/quickstep/dock/DockView;

    iget v1, p0, Lcom/oplus/quickstep/dock/f;->b:I

    iget-object v2, p0, Lcom/oplus/quickstep/dock/f;->c:Lcom/android/systemui/shared/recents/model/Task;

    iget v3, p0, Lcom/oplus/quickstep/dock/f;->d:I

    iget v4, p0, Lcom/oplus/quickstep/dock/f;->e:I

    iget v5, p0, Lcom/oplus/quickstep/dock/f;->f:I

    iget-object v6, p0, Lcom/oplus/quickstep/dock/f;->g:Lcom/oplus/quickstep/dock/DockIconView;

    move-object v7, p1

    check-cast v7, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v7}, Lcom/oplus/quickstep/dock/DockView;->r(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;IIILcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void
.end method
