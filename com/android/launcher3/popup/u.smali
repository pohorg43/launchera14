.class public final synthetic Lcom/android/launcher3/popup/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/popup/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/u;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/popup/u;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;Lcom/android/launcher/Launcher;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/popup/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/u;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/popup/u;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/popup/u;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/popup/u;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;

    iget-object p0, p0, Lcom/android/launcher3/popup/u;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;->i(Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/popup/u;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/popup/u;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->f(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
