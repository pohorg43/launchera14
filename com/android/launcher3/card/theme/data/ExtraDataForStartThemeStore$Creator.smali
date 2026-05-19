.class public final Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore$Creator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
    .registers 11

    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_21

    move-object v6, v5

    goto :goto_2a

    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    :goto_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_32

    move-object v7, v5

    goto :goto_3b

    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    :goto_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    goto :goto_48

    :cond_47
    const/4 p1, 0x0

    :goto_48
    move-object v0, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
    .registers 2

    new-array p0, p1, [Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore$Creator;->newArray(I)[Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    move-result-object p0

    return-object p0
.end method
