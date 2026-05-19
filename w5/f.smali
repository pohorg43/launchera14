.class public final Lw5/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh6/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, "java.lang.Class"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw5/f;->a:Lh6/c;

    return-void
.end method
