.class public Lcom/android/common/sort/PinyinUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPinyin(Ljava/lang/String;)Lcom/android/common/sort/PinyinBean;
    .registers 13

    new-instance v0, Lcom/android/common/sort/PinyinBean;

    invoke-direct {v0}, Lcom/android/common/sort/PinyinBean;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/common/sort/PinyinBean;->mOriginName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_2e
    if-ge v6, v4, :cond_92

    aget-char v8, p0, v6

    invoke-static {v8}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v9

    const/4 v10, 0x2

    const-string v11, ";"

    if-ne v9, v10, :cond_81

    const/16 v9, 0x4e00

    const/16 v10, 0x3007

    if-gt v9, v8, :cond_4c

    const v9, 0x9fa5

    if-gt v8, v9, :cond_4c

    invoke-static {v8}, Lc2/a;->b(C)I

    move-result v9

    if-gtz v9, :cond_4e

    :cond_4c
    if-ne v10, v8, :cond_50

    :cond_4e
    const/4 v9, 0x1

    goto :goto_51

    :cond_50
    move v9, v5

    :goto_51
    if-eqz v9, :cond_61

    if-ne v8, v10, :cond_58

    const-string v8, "LING"

    goto :goto_65

    :cond_58
    sget-object v9, Lc2/e;->b:[Ljava/lang/String;

    invoke-static {v8}, Lc2/a;->b(C)I

    move-result v8

    aget-object v8, v9, v8

    goto :goto_65

    :cond_61
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    :goto_65
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8f

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_8f

    :cond_81
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :cond_8f
    :goto_8f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/common/sort/PinyinBean;->mFirstPinyin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/common/sort/PinyinBean;->mWholePinyin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/common/sort/PinyinBean;->mWholePinyinTag:Ljava/lang/String;

    return-object v0
.end method
