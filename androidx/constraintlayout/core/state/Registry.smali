.class public Landroidx/constraintlayout/core/state/Registry;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sRegistry:Landroidx/constraintlayout/core/state/Registry;


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/state/RegistryCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/constraintlayout/core/state/Registry;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Registry;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Landroidx/constraintlayout/core/state/Registry;
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/state/Registry;->sRegistry:Landroidx/constraintlayout/core/state/Registry;

    return-object v0
.end method


# virtual methods
.method public currentContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentMotionScene()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public currentLayoutInformation(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroidx/constraintlayout/core/state/RegistryCallback;->currentLayoutInformation()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastModified(Ljava/lang/String;)J
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroidx/constraintlayout/core/state/RegistryCallback;->getLastModified()J

    move-result-wide p0

    return-wide p0

    :cond_f
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getLayoutList()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public register(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .registers 3

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDrawDebug(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_d

    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setDrawDebug(I)V

    :cond_d
    return-void
.end method

.method public setLayoutInformationMode(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_d

    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->setLayoutInformationMode(I)V

    :cond_d
    return-void
.end method

.method public unregister(Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;)V
    .registers 3

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateContent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_d

    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onNewMotionScene(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public updateDimensions(Ljava/lang/String;II)V
    .registers 4

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_d

    invoke-interface {p0, p2, p3}, Landroidx/constraintlayout/core/state/RegistryCallback;->onDimensions(II)V

    :cond_d
    return-void
.end method

.method public updateProgress(Ljava/lang/String;F)V
    .registers 3

    iget-object p0, p0, Landroidx/constraintlayout/core/state/Registry;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/RegistryCallback;

    if-eqz p0, :cond_d

    invoke-interface {p0, p2}, Landroidx/constraintlayout/core/state/RegistryCallback;->onProgress(F)V

    :cond_d
    return-void
.end method
