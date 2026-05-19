.class public final synthetic Lw/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .registers 9

    iput p8, p0, Lw/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw/b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lw/b;->e:Ljava/lang/Object;

    iput-object p5, p0, Lw/b;->f:Ljava/lang/Object;

    iput-object p6, p0, Lw/b;->g:Ljava/lang/Object;

    iput-object p7, p0, Lw/b;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9

    const/4 v0, 0x2

    iput v0, p0, Lw/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw/b;->h:Ljava/util/List;

    iput-object p3, p0, Lw/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lw/b;->d:Ljava/lang/Object;

    iput-object p5, p0, Lw/b;->f:Ljava/lang/Object;

    iput-object p6, p0, Lw/b;->e:Ljava/lang/Object;

    iput-object p7, p0, Lw/b;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget v0, p0, Lw/b;->a:I

    packed-switch v0, :pswitch_data_72

    goto :goto_4e

    :pswitch_6  #0x1
    iget-object v0, p0, Lw/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lw/b;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/mode/LauncherMode;

    iget-object v0, p0, Lw/b;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    iget-object v0, p0, Lw/b;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lw/b;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    iget-object v0, p0, Lw/b;->g:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lw/b;->h:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/backup/util/LauncherDBUtils;->f(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :pswitch_2a  #0x0
    iget-object v0, p0, Lw/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lw/b;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/mode/LauncherMode;

    iget-object v0, p0, Lw/b;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    iget-object v0, p0, Lw/b;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lw/b;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    iget-object v0, p0, Lw/b;->g:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lw/b;->h:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/backup/util/LauncherDBUtils;->b(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :goto_4e
    iget-object v0, p0, Lw/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lw/b;->h:Ljava/util/List;

    iget-object v0, p0, Lw/b;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-object v0, p0, Lw/b;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-object v0, p0, Lw/b;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    iget-object v0, p0, Lw/b;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    iget-object p0, p0, Lw/b;->g:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->a(Lcom/android/launcher/Launcher;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
