.class public final synthetic Lcom/android/launcher/folder/download/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
