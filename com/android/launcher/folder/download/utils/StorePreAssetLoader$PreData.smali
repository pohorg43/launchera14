.class public final Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/download/utils/StorePreAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreData"
.end annotation


# instance fields
.field private final appInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final jumpUrlPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jumpUrlPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;",
            ">;)",
            "Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;"
        }
    .end annotation

    const-string p0, "jumpUrlPrefix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appInfos"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;

    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    iget-object p1, p1, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getAppInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    return-object p0
.end method

.method public final getJumpUrlPrefix()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "PreData(jumpUrlPrefix="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->jumpUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/folder/download/utils/StorePreAssetLoader$PreData;->appInfos:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
