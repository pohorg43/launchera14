.class public final Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "App"
.end annotation


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 4

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;Landroid/content/ComponentName;Landroid/os/UserHandle;ILjava/lang/Object;)Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->copy(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final component2()Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method public final copy(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;
    .registers 3

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "user"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    invoke-direct {p0, p1, p2}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;

    iget-object v0, p1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object p1, p1, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    and-int/2addr p0, v0

    return p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "App{cn="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper$App;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
