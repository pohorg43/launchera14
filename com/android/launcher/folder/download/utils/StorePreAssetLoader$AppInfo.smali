.class public final Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppInfo"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final iconName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v1, "packageName"

    const-string v3, "appName"

    const-string v5, "iconName"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;
    .registers 4

    const-string/jumbo p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "iconName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;

    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getAppName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AppInfo(packageName="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;->iconName:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
