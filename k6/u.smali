.class public final Lk6/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/b<",
            "Lk6/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh/b;

    const-string v1, "ResolutionAnchorProvider"

    invoke-direct {v0, v1}, Lh/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk6/u;->a:Lh/b;

    return-void
.end method
