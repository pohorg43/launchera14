.class public Ls2/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ls2/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ls2/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls2/b;-><init>(Ls2/a;)V

    sput-object v0, Ls2/b$a;->a:Ls2/b;

    return-void
.end method
