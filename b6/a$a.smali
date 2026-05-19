.class public final enum Lb6/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb6/a$a;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKotlinClassHeader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinClassHeader.kt\norg/jetbrains/kotlin/load/kotlin/header/KotlinClassHeader$Kind\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,78:1\n8811#2,2:79\n9071#2,4:81\n*S KotlinDebug\n*F\n+ 1 KotlinClassHeader.kt\norg/jetbrains/kotlin/load/kotlin/header/KotlinClassHeader$Kind\n*L\n34#1:79,2\n34#1:81,4\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lb6/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum c:Lb6/a$a;

.field public static final enum d:Lb6/a$a;

.field public static final enum e:Lb6/a$a;

.field public static final enum f:Lb6/a$a;

.field public static final enum g:Lb6/a$a;

.field public static final enum h:Lb6/a$a;

.field public static final synthetic i:[Lb6/a$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lb6/a$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lb6/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb6/a$a;->c:Lb6/a$a;

    new-instance v1, Lb6/a$a;

    const-string v3, "CLASS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lb6/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lb6/a$a;->d:Lb6/a$a;

    new-instance v3, Lb6/a$a;

    const-string v5, "FILE_FACADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lb6/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lb6/a$a;->e:Lb6/a$a;

    new-instance v5, Lb6/a$a;

    const-string v7, "SYNTHETIC_CLASS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lb6/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lb6/a$a;->f:Lb6/a$a;

    new-instance v7, Lb6/a$a;

    const-string v9, "MULTIFILE_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lb6/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lb6/a$a;->g:Lb6/a$a;

    new-instance v9, Lb6/a$a;

    const-string v11, "MULTIFILE_CLASS_PART"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lb6/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lb6/a$a;->h:Lb6/a$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lb6/a$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lb6/a$a;->i:[Lb6/a$a;

    invoke-static {}, Lb6/a$a;->values()[Lb6/a$a;

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Li4/j0;->b(I)I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_5b

    move v1, v3

    :cond_5b
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v1, v0

    :goto_61
    if-ge v2, v1, :cond_71

    aget-object v4, v0, v2

    iget v5, v4, Lb6/a$a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_71
    sput-object v3, Lb6/a$a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lb6/a$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb6/a$a;
    .registers 2

    const-class v0, Lb6/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb6/a$a;

    return-object p0
.end method

.method public static values()[Lb6/a$a;
    .registers 1

    sget-object v0, Lb6/a$a;->i:[Lb6/a$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb6/a$a;

    return-object v0
.end method
