.class public interface abstract Lc1/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lc1/a$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc1/a$b$a;

    invoke-direct {v0}, Lc1/a$b$a;-><init>()V

    sput-object v0, Lc1/a$b;->a:Lc1/a$b;

    return-void
.end method
