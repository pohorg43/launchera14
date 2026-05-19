.class public final Landroidx/core/content/ContentValuesKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final varargs contentValuesOf([Lh4/j;)Landroid/content/ContentValues;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    const-string/jumbo v0, "pairs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_a6

    aget-object v3, p0, v2

    iget-object v4, v3, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Lh4/j;->b:Ljava/lang/Object;

    if-nez v3, :cond_1e

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_77

    :cond_1e
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_28

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_28
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_32

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_77

    :cond_32
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_3c

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_77

    :cond_3c
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_46

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_77

    :cond_46
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_50

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_77

    :cond_50
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_5a

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_77

    :cond_5a
    instance-of v5, v3, [B

    if-eqz v5, :cond_64

    check-cast v3, [B

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_77

    :cond_64
    instance-of v5, v3, Ljava/lang/Byte;

    if-eqz v5, :cond_6e

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_77

    :cond_6e
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_7a

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_7a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for key \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a6
    return-object v0
.end method
