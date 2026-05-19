.class public final synthetic Lcom/android/launcher/badge/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compat/content/pm/IPackageDataObserverNative;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/StringWriter;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher/badge/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget v0, p0, Lcom/android/launcher/badge/k;->a:I

    packed-switch v0, :pswitch_data_ca

    goto :goto_5e

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/compat/content/pm/IPackageDataObserverNative;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    return-void

    :pswitch_16  #0x5
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/sysui/ShellController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sysui/ShellController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_22  #0x4
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/recents/RecentTasksController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentTasksController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_2e  #0x3
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_3a  #0x2
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/pm/InstallSessionTracker;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/pm/InstallSessionTracker;->a(Lcom/android/launcher3/pm/InstallSessionTracker;Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void

    :pswitch_46  #0x1
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/IconCache;

    check-cast p1, Landroidx/core/util/Pair;

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->q(Lcom/android/launcher3/icons/IconCache;Landroidx/core/util/Pair;Ljava/util/List;)V

    return-void

    :pswitch_52  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    check-cast p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    check-cast p2, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->k(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void

    :goto_5e
    iget-object p0, p0, Lcom/android/launcher/badge/k;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/StringWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    sget v0, Lp8/d;->n:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    :goto_9d
    if-eq v1, v5, :cond_c5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    move v6, v5

    move v5, v1

    move v1, v6

    goto :goto_9d

    :cond_c5
    invoke-virtual {p0, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_52  #00000000
        :pswitch_46  #00000001
        :pswitch_3a  #00000002
        :pswitch_2e  #00000003
        :pswitch_22  #00000004
        :pswitch_16  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
