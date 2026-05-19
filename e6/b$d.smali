.class public abstract Le6/b$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(IILe6/b$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le6/b$d;->a:I

    iput p2, p0, Le6/b$d;->b:I

    return-void
.end method

.method public static a()Le6/b$b;
    .registers 2

    new-instance v0, Le6/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le6/b$b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
