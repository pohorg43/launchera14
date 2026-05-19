.class public final synthetic Lcom/android/launcher3/hotseat/expand/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/Launcher;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V
    .registers 8

    iput p6, p0, Lcom/android/launcher3/hotseat/expand/g;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/g;->b:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/hotseat/expand/g;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/hotseat/expand/g;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/hotseat/expand/g;->e:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/launcher3/hotseat/expand/g;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/hotseat/expand/g;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/g;->b:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/hotseat/expand/g;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/hotseat/expand/g;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/hotseat/expand/g;->e:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/expand/g;->f:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->b(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/g;->b:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/hotseat/expand/g;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/hotseat/expand/g;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/hotseat/expand/g;->e:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/expand/g;->f:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->b(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
