.class final Lokio/ForwardingFileSystem$listRecursively$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/ForwardingFileSystem;->listRecursively(Lokio/Path;Z)Lj7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokio/Path;",
        "Lokio/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lokio/ForwardingFileSystem;


# direct methods
.method public constructor <init>(Lokio/ForwardingFileSystem;)V
    .registers 2

    iput-object p1, p0, Lokio/ForwardingFileSystem$listRecursively$1;->this$0:Lokio/ForwardingFileSystem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lokio/Path;

    invoke-virtual {p0, p1}, Lokio/ForwardingFileSystem$listRecursively$1;->invoke(Lokio/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lokio/Path;)Lokio/Path;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokio/ForwardingFileSystem$listRecursively$1;->this$0:Lokio/ForwardingFileSystem;

    const-string v0, "listRecursively"

    invoke-virtual {p0, p1, v0}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method
