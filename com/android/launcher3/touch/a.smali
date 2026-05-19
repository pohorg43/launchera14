.class public final synthetic Lcom/android/launcher3/touch/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/Launcher;

.field public final synthetic b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/a;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/touch/a;->b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/touch/a;->a:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/touch/a;->b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->c(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
