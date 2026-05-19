.class public final Lio/branch/search/k5;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Landroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "$this$optString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    move-object p1, p0

    :cond_11
    return-object p1
.end method

.method public static synthetic a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const-string p1, ""

    :cond_6
    invoke-static {p0, p1}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
