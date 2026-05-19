.class public Lio/branch/search/j$h;
.super Lio/branch/search/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/j;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/j$h;->c:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    goto :goto_31

    :cond_2d
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_31
    iput-object p1, p0, Lio/branch/search/j$h;->d:Landroid/os/UserHandle;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/j$h;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p2}, Lio/branch/search/s;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object p3

    iget-object v0, p0, Lio/branch/search/j$h;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/j$h;->d:Landroid/os/UserHandle;

    invoke-interface {p3, p1, v0, p2, v1}, Lio/branch/search/IBranchShortcutHandler;->launchShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {p0}, Lio/branch/search/j$g;->a(Lio/branch/search/j;)Lio/branch/search/j$g;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-static {}, Lio/branch/search/j$g;->a()Lio/branch/search/j$g;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p2}, Lio/branch/search/s;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object p3

    iget-object v0, p0, Lio/branch/search/j$h;->c:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/j$h;->d:Landroid/os/UserHandle;

    invoke-interface {p3, p1, v0, p2, p0}, Lio/branch/search/IBranchShortcutHandler;->validateShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
