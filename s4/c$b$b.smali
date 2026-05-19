.class public final Ls4/c$b$b;
.super Ls4/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls4/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileTreeWalk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeWalk.kt\nkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"
    }
.end annotation


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Ls4/c$b;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string p1, "rootFile"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ls4/c$c;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    iget-boolean v0, p0, Ls4/c$b$b;->b:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls4/c$b$b;->b:Z

    iget-object p0, p0, Ls4/c$c;->a:Ljava/io/File;

    return-object p0
.end method
