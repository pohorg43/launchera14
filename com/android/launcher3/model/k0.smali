.class public final synthetic Lcom/android/launcher3/model/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/os/UserHandle;

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/k0;->a:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher3/model/k0;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/model/k0;->a:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/model/k0;->b:Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->d(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z

    move-result p0

    return p0
.end method
