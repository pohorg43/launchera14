.class public interface abstract Lo7/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo7/t;
.implements Lo7/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo7/t<",
        "TE;>;",
        "Lo7/s<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final M:Lo7/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lo7/f$a;->a:Lo7/f$a;

    sput-object v0, Lo7/f;->M:Lo7/f$a;

    return-void
.end method
