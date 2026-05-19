.class public final synthetic Lcom/android/launcher3/model/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/g0;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_46

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/OplusModelWriter;->u(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void

    :pswitch_16  #0x2
    iget-object v0, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ModelWriter;->c(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void

    :pswitch_26  #0x1
    iget-object v0, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ModelWriter;->h(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ItemInstallQueue;->e(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    return-void

    :goto_46
    iget-object v0, p0, Lcom/android/launcher3/model/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/g0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/launcher3/model/g0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/OplusModelWriter;->C(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_26  #00000001
        :pswitch_16  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
