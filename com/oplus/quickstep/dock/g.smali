.class public final synthetic Lcom/oplus/quickstep/dock/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/dock/DockView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic d:Lcom/oplus/quickstep/dock/DockIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/g;->a:Lcom/oplus/quickstep/dock/DockView;

    iput p2, p0, Lcom/oplus/quickstep/dock/g;->b:I

    iput-object p3, p0, Lcom/oplus/quickstep/dock/g;->c:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p4, p0, Lcom/oplus/quickstep/dock/g;->d:Lcom/oplus/quickstep/dock/DockIconView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dock/g;->a:Lcom/oplus/quickstep/dock/DockView;

    iget v1, p0, Lcom/oplus/quickstep/dock/g;->b:I

    iget-object v2, p0, Lcom/oplus/quickstep/dock/g;->c:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/g;->d:Lcom/oplus/quickstep/dock/DockIconView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/quickstep/dock/DockView;->q(Lcom/oplus/quickstep/dock/DockView;ILcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void
.end method
