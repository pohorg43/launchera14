.class final synthetic Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 v1, 0x0

    const-string v4, "stopOrReleaseTaskView"

    const-string v5, "stopOrReleaseTaskView(Z)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getReceiver$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$2;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$2;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$2;->access$getReceiver$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)V

    return-void
.end method
