.class final Lokio/internal/ZipFilesKt$openZip$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipFilesKt;->openZip$default(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lokio/ZipFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokio/internal/ZipEntry;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokio/internal/ZipFilesKt$openZip$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokio/internal/ZipFilesKt$openZip$1;

    invoke-direct {v0}, Lokio/internal/ZipFilesKt$openZip$1;-><init>()V

    sput-object v0, Lokio/internal/ZipFilesKt$openZip$1;->INSTANCE:Lokio/internal/ZipFilesKt$openZip$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lokio/internal/ZipEntry;)Ljava/lang/Boolean;
    .registers 2

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lokio/internal/ZipEntry;

    invoke-virtual {p0, p1}, Lokio/internal/ZipFilesKt$openZip$1;->invoke(Lokio/internal/ZipEntry;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
