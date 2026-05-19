.class public final Lk3/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/net/Uri;

.field public static b:Z

.field public static c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.advice.settings.combine.external.pas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lk3/a;->a:Landroid/net/Uri;

    const-string v0, "com.oplus.advice.settings"

    sput-object v0, Lk3/a;->c:Ljava/lang/String;

    return-void
.end method
