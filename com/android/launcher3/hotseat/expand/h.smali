.class public final synthetic Lcom/android/launcher3/hotseat/expand/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/launcher/Launcher;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/launcher/Launcher;ZI)V
    .registers 6

    iput p4, p0, Lcom/android/launcher3/hotseat/expand/h;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hotseat/expand/h;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/hotseat/expand/h;->c:Lcom/android/launcher/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/hotseat/expand/h;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/hotseat/expand/h;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/h;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/hotseat/expand/h;->c:Lcom/android/launcher/Launcher;

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/expand/h;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/hotseat/expand/ExpandItemUpdateHelper;->a(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/hotseat/expand/h;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/hotseat/expand/h;->c:Lcom/android/launcher/Launcher;

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/expand/h;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/hotseat/expand/TabletExpandItemUpdateHelper;->a(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
