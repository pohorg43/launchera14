.class public final Lcom/oplus/utrace/utils/ExceptionProtectUtilKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OPLUS_CUSTOMIZE_CTA_USER_EXPERIENCE:Ljava/lang/String; = "oplus_customize_cta_user_experience"

.field private static final TAG:Ljava/lang/String; = "UTrace.Lib.ProtectUtil"


# direct methods
.method public static final readParcelableSafe(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Landroid/os/Parcelable;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    if-eqz p1, :cond_f

    goto :goto_16

    :cond_f
    move-object p0, v0

    goto :goto_16

    :catchall_11
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_16
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_2e

    :cond_1d
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readParcelableSafe: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Lib.ProtectUtil"

    invoke-virtual {v1, v3, v2, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    instance-of p1, p0, Lh4/k$a;

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    move-object v0, p0

    :goto_34
    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method
